/*
 * Copyright (C) 2013 The Android Open Source Project
 * Copyright (C) 2014 Kamil Lulko
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "ConsumerIrHal"

#include <errno.h>
#include <string.h>
#include <cutils/log.h>
#include <hardware/hardware.h>
#include <hardware/consumerir.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <linux/android_irrc.h>
#include <alsa_audio.h>
#include <alsa_ucm.h>
#include <msm8960_use_cases.h>

#include <math.h>

/* Global data */
snd_use_case_mgr_t *uc_mgr;

#define THE_DEVICE	"/dev/msm_IRRC_pcm_dec"
#define ARRAY_SIZE(a)	(sizeof(a) / sizeof(a[0]))

/* This is pretty much meaningless for now */
struct irrc_compr_params {
	int frequency;
	int duty;
	int length;
};

/* This is even more meaningless currently */
static const consumerir_freq_range_t consumerir_freqs[] = {
	{.min = 30000, .max = 30000},
	{.min = 33000, .max = 33000},
	{.min = 36000, .max = 36000},
	{.min = 38000, .max = 38000},
	{.min = 40000, .max = 40000},
	{.min = 56000, .max = 56000},
};

static int consumerir_transmit(struct consumerir_device *dev,
		int carrier_freq, int pattern[], int pattern_len)
{
	int total_time = 0;
	long i;
	int fd, res, err;
	struct irrc_compr_params irrc_params;
	struct mixer *mix;
	struct mixer_ctl *ctl;
	struct pcm* pcm_instance;

	/* Get rid of warnings until we get logic in place */
	(void)dev;
	(void)pattern;
	(void)pattern_len;

	/* Perform the Use Case Manager stuff first */
	err = snd_use_case_mgr_open(&uc_mgr, "snd_soc_msm_Sitar");
	if (err < 0) {
		ALOGE("snd_use_case_mgr_open error %d", err);
	}
	err = snd_use_case_set(uc_mgr, "_verb", "SWIRRC Speaker");
	if (err < 0) {
		ALOGE("snd_use_case_set error %d", err);
	}
	err = snd_use_case_set(uc_mgr, "_enadev", "SWIRRC Speaker Device");
	if (err < 0) {
		ALOGE("snd_use_case_set error %d", err);
	}

	/* Perform all the required ALSA stuff here
	 * TODO: make this pretty with another ALSA wrapper lib
	 */
	pcm_instance = pcm_open(PCM_OUT|PCM_STEREO, "hw:0,1");
	if (!pcm_ready(pcm_instance)) {
		ALOGE("pcm_ready fail ret %d", errno);
		pcm_close(pcm_instance);
		return errno;
	}

	pcm_instance->format = SNDRV_PCM_FORMAT_S16_LE;
	pcm_instance->rate = 48000;
	pcm_instance->channels = 2;

	struct snd_pcm_hw_params *params;
	struct snd_pcm_sw_params *sparams;

	unsigned long periodSize, bufferSize, reqBuffSize;
	unsigned int periodTime, bufferTime;
	unsigned int requestedRate = pcm_instance->rate;
	int channels;

	if(pcm_instance->flags & PCM_MONO)
		channels = 1;
	else
        	channels = 2;

	params = (struct snd_pcm_hw_params*) calloc(1, sizeof(struct snd_pcm_hw_params));
	if (!params) {
		ALOGE("Failed to allocate ALSA hardware parameters!");
		return -ENOMEM;
	}

	param_init(params);

	param_set_mask(params, SNDRV_PCM_HW_PARAM_ACCESS,
		(pcm_instance->flags & PCM_MMAP) ?
		SNDRV_PCM_ACCESS_MMAP_INTERLEAVED : SNDRV_PCM_ACCESS_RW_INTERLEAVED);
	param_set_mask(params, SNDRV_PCM_HW_PARAM_FORMAT, pcm_instance->format);
	param_set_mask(params, SNDRV_PCM_HW_PARAM_SUBFORMAT,
		SNDRV_PCM_SUBFORMAT_STD);
	param_set_min(params, SNDRV_PCM_HW_PARAM_PERIOD_TIME, 10);
	param_set_int(params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS, 16);
	param_set_int(params, SNDRV_PCM_HW_PARAM_FRAME_BITS,
		pcm_instance->channels * 16);
	param_set_int(params, SNDRV_PCM_HW_PARAM_CHANNELS,
		pcm_instance->channels);
	param_set_int(params, SNDRV_PCM_HW_PARAM_RATE, pcm_instance->rate);
	param_set_hw_refine(pcm_instance, params);

	if (param_set_hw_params(pcm_instance, params)) {
		ALOGE("Cannot set hw params\n");
		return -errno;
	}

	pcm_instance->buffer_size = pcm_buffer_size(params);
	pcm_instance->period_size = pcm_period_size(params);
	pcm_instance->period_cnt = pcm_instance->buffer_size/pcm_instance->period_size;
	sparams = (struct snd_pcm_sw_params*) calloc(1, sizeof(struct snd_pcm_sw_params));
	if (!sparams) {
		ALOGE("Failed to allocate ALSA software parameters!\n");
		return -ENOMEM;
	}

	// Get the current software parameters
	sparams->tstamp_mode = SNDRV_PCM_TSTAMP_NONE;
	sparams->period_step = 1;
	sparams->avail_min = pcm_instance->period_size/(channels * 2) ;
	sparams->start_threshold =  pcm_instance->period_size/(channels * 2) ;
	sparams->stop_threshold =  pcm_instance->buffer_size ;
	sparams->xfer_align =  pcm_instance->period_size/(channels * 2) ; /* needed for old kernels */
	sparams->silence_size = 0;
	sparams->silence_threshold = 0;

	if (param_set_sw_params(pcm_instance, sparams)) {
		ALOGE("Cannot set sw params");
		return -errno;
	}

	/* We can finally start the PWM
	 * TODO: How does this PWM relate to PCM audio output?
	 * Why is there PWM and PCM at the same time?
	 * What is the meaning of life?
	 */
	fd = open(THE_DEVICE, O_RDWR);
	if(fd < 0) {
		ALOGE("IRRC fopen error %d, %d", fd, errno);
		return errno;
	}
	irrc_params.frequency = carrier_freq;
	irrc_params.duty = 30;
	res = ioctl(fd, IRRC_START, &irrc_params);
	ALOGE("IRRC_START ioctl res = %d", res);

	/* For now we simply generate a sine wave to see if this works */
	#define SAMPLES 48000
	#define FREQ	1000.0
	double PERIOD = 1 / (double)FREQ;
	double TIME_STEP = 1 / (double)SAMPLES;
	#define M_PI 3.14159265358979323846
	int samples[SAMPLES];
	double time = 0;
	for (i = 0; i < SAMPLES; ++i) {
		double angle = (2 * M_PI / PERIOD) * time;
		double factor = 0.5 * (sin(angle) + 1);
		int x = (32768 * factor);
		samples[i] = x;
		time += TIME_STEP;
	}

	/* The moment of truth... */
	if(pcm_write(pcm_instance, samples, SAMPLES)) {
		ALOGE("Aplay: pcm_write failed %d\n", errno);
		pcm_close(pcm_instance);
		return -errno;
	}

	/* OK, clean up */
	res = ioctl(fd, IRRC_STOP, &irrc_params);
	ALOGE("IRRC_STOP ioctl res = %d", res);
	err = snd_use_case_set(uc_mgr, "_disdev", "SWIRRC Speaker Device");
	if (err < 0) {
		ALOGE("snd_use_case_set error %d", err);
	}
	err = snd_use_case_set(uc_mgr, "_verb", "Inactive");
	if (err < 0) {
		ALOGE("snd_use_case_set error %d", err);
	}
	snd_use_case_mgr_close(uc_mgr);
	pcm_close(pcm_instance);
	close(fd);

	return 0;
}

static int consumerir_get_num_carrier_freqs(struct consumerir_device *dev)
{
	/* Get rid of warning until we get the logic in here */
	(void)dev;
	return ARRAY_SIZE(consumerir_freqs);
}

static int consumerir_get_carrier_freqs(struct consumerir_device *dev,
		size_t len, consumerir_freq_range_t *ranges)
{
	size_t to_copy = ARRAY_SIZE(consumerir_freqs);

	/* Get rid of warning until we get the logic in here */
	(void)dev;

	to_copy = len < to_copy ? len : to_copy;
	memcpy(ranges, consumerir_freqs, to_copy * sizeof(consumerir_freq_range_t));
	return to_copy;
}

static int consumerir_close(hw_device_t *dev)
{
	free(dev);
	return 0;
}

/*
 * Generic device handling
 */
static int consumerir_open(const hw_module_t* module, const char* name,
		hw_device_t** device)
{
	if (strcmp(name, CONSUMERIR_TRANSMITTER) != 0) {
		return -EINVAL;
	}
	if (device == NULL) {
		ALOGE("NULL device on open");
		return -EINVAL;
	}

	consumerir_device_t *dev = malloc(sizeof(consumerir_device_t));
	memset(dev, 0, sizeof(consumerir_device_t));

	dev->common.tag = HARDWARE_DEVICE_TAG;
	dev->common.version = 0;
	dev->common.module = (struct hw_module_t*) module;
	dev->common.close = consumerir_close;

	dev->transmit = consumerir_transmit;
	dev->get_num_carrier_freqs = consumerir_get_num_carrier_freqs;
	dev->get_carrier_freqs = consumerir_get_carrier_freqs;

	*device = (hw_device_t*) dev;
	return 0;
}

static struct hw_module_methods_t consumerir_module_methods = {
	.open = consumerir_open,
};

consumerir_module_t HAL_MODULE_INFO_SYM = {
	.common = {
		.tag                = HARDWARE_MODULE_TAG,
		.module_api_version = CONSUMERIR_MODULE_API_VERSION_1_0,
		.hal_api_version    = HARDWARE_HAL_API_VERSION,
		.id                 = CONSUMERIR_HARDWARE_MODULE_ID,
		.name               = "LG-D605 IR HAL",
		.author             = "Kamil Lulko <rev13@wp.pl>",
		.methods            = &consumerir_module_methods,
		},
};

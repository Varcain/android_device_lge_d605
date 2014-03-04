/*
 * Copyright (C) 2011-2012 The CyanogenMod Project
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

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main() {
	FILE *config_fd = NULL;
	FILE *nvram_fd = NULL;
	unsigned char macbuf[6];

	nvram_fd = fopen("/dev/block/platform/msm_sdcc.1/by-name/misc", "r");
	if ( nvram_fd == NULL ) {
		return -1;
	}
	else {
		/* Read BT MAC */
		fseek(nvram_fd,0x4000,SEEK_SET);
		fread(macbuf, 6, 1, nvram_fd);
		config_fd = fopen("/data/misc/bd_addr","w");
		fprintf(config_fd,"%02X:%02X:%02X:%02X:%02X:%02X",
			macbuf[0], macbuf[1], macbuf[2],
			macbuf[3], macbuf[4], macbuf[5]);
		fclose(config_fd);

		/* Read WLAN MAC */
		fseek(nvram_fd,0x3000,SEEK_SET);
		fread(macbuf, 6, 1, nvram_fd);
		config_fd = fopen("/data/misc/wifi/config","w");
		fprintf(config_fd,"cur_etheraddr=%02X:%02X:%02X:%02X:%02X:%02X",
			macbuf[0], macbuf[1], macbuf[2],
			macbuf[3], macbuf[4], macbuf[5]);
		fclose(config_fd);

		fclose(nvram_fd);
	}

	return 0;
}


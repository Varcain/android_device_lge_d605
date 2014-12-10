$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/d605/d605-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/d605/overlay

LOCAL_PATH := device/lge/d605
LOCAL_KERNEL := kernel/lge/d605

PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# This device is xhdpi. However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Scripts
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/init.d605.rc:root/init.d605.rc \
    	$(LOCAL_PATH)/ueventd.d605.rc:root/ueventd.d605.rc \
    	$(LOCAL_PATH)/fstab.d605:root/fstab.d605 \
	$(LOCAL_PATH)/init.class_main.sh:root/init.class_main.sh \
	$(LOCAL_PATH)/init.engdo.class_core.sh:root/init.engdo.class_core.sh \
	$(LOCAL_PATH)/init.engdo.cmm.usb.sh:root/init.engdo.cmm.usb.sh \
	$(LOCAL_PATH)/init.engdo.early_boot.sh:root/init.engdo.early_boot.sh \
	$(LOCAL_PATH)/init.engdo.sh:root/init.engdo.sh \
	$(LOCAL_PATH)/init.engdo.syspart_fixup.sh:root/init.engdo.syspart_fixup.sh \
	$(LOCAL_PATH)/init.engdo.usb.rc:root/init.engdo.usb.rc \
	$(LOCAL_PATH)/init.engdo.usb.sh:root/init.engdo.usb.sh \
	$(LOCAL_PATH)/scripts/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
	$(LOCAL_PATH)/scripts/init.crda.sh:system/etc/init.crda.sh \
	$(LOCAL_PATH)/scripts/init.engdo.audio.sh:system/etc/init.engdo.audio.sh \
	$(LOCAL_PATH)/scripts/init.engdo.btdun.sh:system/etc/init.engdo.btdun.sh \
	$(LOCAL_PATH)/scripts/init.engdo.bt.sh:system/etc/init.engdo.bt.sh \
	$(LOCAL_PATH)/scripts/init.engdo.coex.sh:system/etc/init.engdo.coex.sh \
	$(LOCAL_PATH)/scripts/init.engdo.efs.sync.sh:system/etc/init.engdo.efs.sync.sh \
	$(LOCAL_PATH)/scripts/init.engdo.fm.sh:system/etc/init.engdo.fm.sh \
	$(LOCAL_PATH)/scripts/init.engdo.mdm_links.sh:system/etc/init.engdo.mdm_links.sh \
	$(LOCAL_PATH)/scripts/init.engdo.modem_links.sh:system/etc/init.engdo.modem_links.sh \
	$(LOCAL_PATH)/scripts/init.engdo.post_boot.sh:system/etc/init.engdo.post_boot.sh \
	$(LOCAL_PATH)/scripts/init.engdo.sdio.sh:system/etc/init.engdo.sdio.sh \
	$(LOCAL_PATH)/scripts/init.engdo.wifi.sh:system/etc/init.engdo.wifi.sh \
	$(LOCAL_PATH)/scripts/last_kmsg_backup.sh:system/etc/last_kmsg_backup.sh \
	$(LOCAL_PATH)/scripts/logging_android_apart.sh:system/etc/logging_android_apart.sh \
	$(LOCAL_PATH)/scripts/logging_android.sh:system/etc/logging_android.sh \
	$(LOCAL_PATH)/scripts/logging_kernel_apart.sh:system/etc/logging_kernel_apart.sh \
	$(LOCAL_PATH)/scripts/logging_kernel.sh:system/etc/logging_kernel.sh \
	$(LOCAL_PATH)/scripts/logging_prepare.sh:system/etc/logging_prepare.sh \
	$(LOCAL_PATH)/scripts/make_packet_log.sh:system/etc/make_packet_log.sh \
	$(LOCAL_PATH)/scripts/save_kernel_log_ats.sh:system/etc/save_kernel_log_ats.sh \
	$(LOCAL_PATH)/scripts/save_kernel_log.sh:system/etc/save_kernel_log.sh \
	$(LOCAL_PATH)/scripts/usf_post_boot.sh:system/etc/usf_post_boot.sh \
	$(LOCAL_PATH)/scripts/init.varcain.nfc_fixup.sh:system/etc/init.varcain.nfc_fixup.sh

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/config/gpio-keys.kcm:system/usr/keychars/gpio-keys.kcm \
	$(LOCAL_PATH)/config/max1187x_touchscreen_0.kcm:system/usr/keychars/max1187x_touchscreen_0.kcm \
	$(LOCAL_PATH)/config/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm \
	$(LOCAL_PATH)/config/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/config/max1187x_touchscreen_0.kl:system/usr/keylayout/max1187x_touchscreen_0.kl \
	$(LOCAL_PATH)/config/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	$(LOCAL_PATH)/config/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	$(LOCAL_PATH)/config/max1187x_touchscreen_0.idc:system/usr/idc/max1187x_touchscreen_0.idc \
	$(LOCAL_PATH)/config/thermald-8930.conf:system/etc/thermald-8930.conf \
	$(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/config/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
	$(LOCAL_PATH)/config/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/config/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
	$(LOCAL_PATH)/config/qosmgr_rules.xml:system/etc/qosmgr_rules.xml \
	$(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
	$(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# Filesystem management tools
PRODUCT_PACKAGES += \
        e2fsck

PRODUCT_PACKAGES += \
	hcitool \
	hciconfig \
	hwaddrs

PRODUCT_PACKAGES += \
        libgenlock \
        liboverlay \
	libmemalloc \
        hwcomposer.msm8960 \
        gralloc.msm8960 \
        copybit.msm8960

# OMX
PRODUCT_PACKAGES += \
	libstagefrighthw \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libmm-omxcore \
	libOmxCore \
	libOmxAacEnc

PRODUCT_PACKAGES += \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	libaudio-resampler \
	audio.r_submix.default

PRODUCT_PACKAGES += \
	libnetcmdiface \
	hwaddrs

PRODUCT_PACKAGES += \
	consumerir.d605
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# Offline charge
PRODUCT_COPY_FILES += \
	charger \
	charger_res_images

# NFC packages
PRODUCT_PACKAGES += \
    libnfc_nci_jni \
    NfcNci \
    Tag \
    com.android.nfc_extras

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfc/nfcee_access_debug.xml
endif

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm-43341b00.conf:system/etc/libnfc-brcm-43341b00.conf \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# Voice processing
PRODUCT_PACKAGES += libqcomvoiceprocessing

PRODUCT_PACKAGES += Torch

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_d605
PRODUCT_DEVICE := d605


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
	$(LOCAL_PATH)/scripts/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	$(LOCAL_PATH)/scripts/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	$(LOCAL_PATH)/scripts/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	$(LOCAL_PATH)/scripts/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \

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
	$(LOCAL_PATH)/config/thermald-empty.conf:system/etc/thermald-empty.conf \
	$(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf \
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

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/scripts/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

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
	libOmxCore

PRODUCT_PACKAGES += \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	libaudio-resampler \
	audio.r_submix.default

PRODUCT_PACKAGES += \
	libnetcmdiface

# Voice processing
PRODUCT_PACKAGES += libqcomvoiceprocessing

PRODUCT_PACKAGES += Torch

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_d605
PRODUCT_DEVICE := d605


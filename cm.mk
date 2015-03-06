# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# This device has NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/lge/d605/d605.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusL9II

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d605
PRODUCT_NAME := cm_d605
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D605
PRODUCT_MANUFACTURER := lge

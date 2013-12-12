## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

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

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := C8817D

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/c8817d.mk)

# Torch
PRODUCT_PACKAGES += \
    Torch

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c8817d
PRODUCT_NAME := cm_c8817d
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := C8817D
PRODUCT_MANUFACTURER := HUAWEI

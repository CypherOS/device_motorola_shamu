# Inherit some common AOSCP stuff.
$(call inherit-product, vendor/aoscp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aoscp/configs/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/shamu/overlay-cm

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aoscp_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.0/NBD91U/3408911:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.0 NBD91U 3408911 release-keys"
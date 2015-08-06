# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit some common Slim stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/z00a/device.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/z00a/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := slim_z00a
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00A
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := z00a

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_Z00A \
    BUILD_FINGERPRINT=asus/WW_Z00A/Z00A:5.0/LRX21V/2.19.40.22_20150627_5104_user:user/release-keys \
    PRIVATE_BUILD_DESC="asusmofd_fhd-user 5.0 LRX21V 2.19.40.22_20150627_5104_user release-keys"

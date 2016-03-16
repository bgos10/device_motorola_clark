# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560
PAC_BOOTANIMATION_NAME := 1440

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/pac/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/pac/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/clark/aosp_clark.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/clark/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := pac_clark
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := XT1575
PRODUCT_GMS_CLIENTID_BASE := android-motorola

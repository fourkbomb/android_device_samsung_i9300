# Release name
PRODUCT_RELEASE_NAME := trats2

# Inherit device configuration
$(call inherit-product, device/samsung/exynos4412-common/common.mk)
$(call inherit-product, device/samsung/trats2/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trats2
PRODUCT_NAME := lineage_trats2
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
		PRODUCT_NAME=m0xx \
		TARGET_DEVICE=m0 \
		BUILD_FINGERPRINT="samsung/m0xx/m0:4.3/JSS15J/I9300XXUGMJ9:user/release-keys" \
		PRIVATE_BUILD_DESC="m0xx-user 4.3 JSS15J I9300XXUGMJ9 release-keys"

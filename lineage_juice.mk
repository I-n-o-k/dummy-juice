# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from juice device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := juice
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_juice
PRODUCT_MODEL := Lime for arm64

PRODUCT_GMS_CLIENTID_BASE := android-redmi
TARGET_VENDOR := redmi
TARGET_VENDOR_PRODUCT_NAME := juice
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 11 Android-Q-build-20210602012800 21.6.2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := lime/lime/11:RKQ1.201004.002/21.6.2/user:release-keys/

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from st18c7bnn device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := nook
PRODUCT_DEVICE := st18c7bnn
PRODUCT_MANUFACTURER := nook
PRODUCT_NAME := lineage_st18c7bnn
PRODUCT_MODEL := BNTV460

PRODUCT_GMS_CLIENTID_BASE := android-nook
TARGET_VENDOR := nook
TARGET_VENDOR_PRODUCT_NAME := st18c7bnn
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="st18c7bnn-user 8.1.0 O11019 1540971846 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nook/st18c7bnnxx/st18c7bnn:8.1.0/O11019/1540971846:user/release-keys

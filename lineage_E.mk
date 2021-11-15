#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from E device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := 10or
PRODUCT_DEVICE := E
PRODUCT_MANUFACTURER := 10or
PRODUCT_NAME := lineage_E
PRODUCT_MODEL := E

TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_GMS_CLIENTID_BASE := android-10or

TARGET_VENDOR_PRODUCT_NAME := E

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="E" \
    PRODUCT_NAME="E" \
    PRIVATE_BUILD_DESC="coral-user 12 SP1A.211105.002.A1 7807550 release-keys"

BUILD_FINGERPRINT :="google/coral/coral:12/SP1A.211105.002.A1/7807550:user/release-keys"

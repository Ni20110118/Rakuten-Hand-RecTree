#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P780 device
$(call inherit-product, device/tinno/P780/device.mk)

PRODUCT_DEVICE := P780
PRODUCT_NAME := omni_P780
PRODUCT_BRAND := Rakuten
PRODUCT_MODEL := P780
PRODUCT_MANUFACTURER := tinno

PRODUCT_GMS_CLIENTID_BASE := android-wtn

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P780-user 11 RKQ1.210715.001 207 release-keys"

BUILD_FINGERPRINT := Rakuten/P780/P780:11/RKQ1.210715.001/207:user/release-keys

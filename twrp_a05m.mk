#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a05m device
$(call inherit-product, device/samsung/a05m/device.mk)

PRODUCT_DEVICE := a05m
PRODUCT_NAME := twrp_a05m
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A055F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a05mxx-user 15 AP3A.240905.015.A2 A055FXXSFDZD1 release-keys"

BUILD_FINGERPRINT := samsung/a05mxx/a05m:15/AP3A.240905.015.A2/A055FXXSFDZD1:user/release-keys

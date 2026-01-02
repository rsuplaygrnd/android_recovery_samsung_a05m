#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Include from common dir
include device/samsung/mt6768-common/twrp_common.mk

# Inherit from a05m device
$(call inherit-product, device/samsung/a05m/device.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_DEVICE := a05m
PRODUCT_NAME := twrp_a05m
PRODUCT_MODEL := SM-A055F

BUILD_FINGERPRINT := samsung/a05mxx/a05m:15/AP3A.240905.015.A2/A055FXXSCDYL3:user/release-keys

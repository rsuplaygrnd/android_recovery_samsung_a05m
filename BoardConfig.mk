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

DEVICE_PATH := device/samsung/a05m

# Common
include device/samsung/mt6768-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := a05m

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a05m

# Display
TARGET_SCREEN_DENSITY := 300
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USES_VULKAN := true

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 loop.max_part=7
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := 
endif

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 80740352
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 80740352

# GKIs hack
TW_LOAD_VENDOR_MODULES := "sec_cmd.ko chipone-tddi.ko gcore_tp.ko focaltech_tp.ko nt36528_tp.ko omnivision_tcm_core_module.ko"

# A05 TWRP spesific
TW_MTP_DEVICE := "Galaxy A05"
TW_FRAMERATE := 60
TW_Y_OFFSET := 50
TW_H_OFFSET := -50
TW_MAX_BRIGHTNESS := 255

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Maintainer
TW_DEVICE_VERSION := Galaxy_A05

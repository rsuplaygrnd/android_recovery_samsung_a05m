#! /usr/bin/env bash
#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2026 yukiprjkt
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH=device/samsung/a05m

echo "Starting vendorsetup.sh"

jdm_patches_exist=$(grep -q "USE_SAMSUNG_JDM_HAPTICS" bootable/recovery/minuitwrp/events.cpp; echo $?)

if [ $jdm_patches_exist != 0 ]; then
	patch -p1 --no-backup-if-mismatch < $(DEVICE_PATH)/patches/01*.patch
	patch -p1 --no-backup-if-mismatch < $(DEVICE_PATH)/patches/02*.patch
	echo "Patches applied."
else
	echo "Patches skipped. Already applied."
fi

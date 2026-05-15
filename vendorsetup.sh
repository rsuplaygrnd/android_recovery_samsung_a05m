#! /usr/bin/env bash
# by rsuntk

echo "Starting vendorsetup.sh"

git clone https://github.com/rsuplaygrnd/android_recovery_samsung_mt6768-common.git device/samsung/mt6768-common

patch -p1 --no-backup-if-mismatch < device/samsung/mt6768-common/patches/01*.patch
patch -p1 --no-backup-if-mismatch < device/samsung/mt6768-common/patches/02*.patch

echo "Patches applied."

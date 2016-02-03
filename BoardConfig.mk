#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/j53g

# Inherit from msm8916-common
-include device/samsung/msm8916-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/j53g
TARGET_KERNEL_CONFIG := cyanogen_j53g_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

# Partition Info
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2437393940
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12444667740
BOARD_CACHEIMAGE_PARTITION_SIZE := 202375168
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := $(LOCAL_PATH)/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom
BOARD_USES_MMC_UTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
DEVICE_RESOLUTION := 720x1280
#TW_BRIGHTNESS_PATH := "/sys/devices/soc.0/1a00000.qcom,mdss_mdp/qcom,mdss_fb_primary.135/leds/lcd-backlight/brightness"
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_USB_STORAGE := true
TW_MTP_DEVICE := /dev/usb_mtp_gadget
RECOVERY_SDCARD_ON_DATA := true
BOARD_RECOVERY_SWIPE := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true

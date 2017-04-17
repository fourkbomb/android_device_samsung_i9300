#
# Copyright (C) 2012 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include device/samsung/exynos4412-common/BoardCommonConfig.mk

# Wifi
WIFI_DRIVER_MODULE_PATH :=

# Bionic
MALLOC_SVELTE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
LIBART_IMG_BASE := 0x30000000

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6262
TARGET_SPECIFIC_HEADER_PATH := device/samsung/trats2/include
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
BOARD_RIL_CLASS := ../../../device/samsung/trats2/ril

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/i9300/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/i9300
TARGET_KERNEL_CONFIG := lineageos_i9300_defconfig
TARGET_KERNEL_APPEND_DTB := true
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE := 10485760

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/trats2/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# PowerHAL
TARGET_POWERHAL_VARIANT := pegasusq

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/trats2/selinux

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
	ro.sys.usb.configfs=1 \
	ro.sys.usb.controller=12480000.hsotg

# assert
TARGET_OTA_ASSERT_DEVICE := m0,i9300,GT-I9300,trats2

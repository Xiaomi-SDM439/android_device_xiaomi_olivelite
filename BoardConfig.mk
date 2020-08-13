#
# Copyright (C) 2020 The LineageOS Project
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

# inherit from common sdm439-common
-include device/xiaomi/sdm439-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/olivelite
BOARD_VENDOR := xiaomi

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := olivelite

# Security patch level
VENDOR_SECURITY_PATCH := 2020-05-01

# Props
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Kernel
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androidkernel-
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=300M firmware_class.path=/vendor/firmware_mnt/image androidboot.usbconfigfs=true loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := olivelite-perf_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
#BOARD_METADATAIMAGE_PARTITION_SIZE := 65536
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1971322880

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab

# inherit from the proprietary version
-include vendor/xiaomi/olivelite/BoardConfigVendor.mk

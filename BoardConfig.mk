#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lime

# Inherit from Xiaomi Minerva
include device/xiaomi/minerva/BoardConfig-common.mk

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 440

# DTB
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# DTBO
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/framework_compatibility_matrix.xml

ODM_MANIFEST_SKUS += lemon
ODM_MANIFEST_LEMON_FILES := hardware/st/nfc/aidl/nfc-service-default.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_lime
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_lime

# OTA assert
TARGET_OTA_ASSERT_DEVICE := lime,lemon,pomelo

# Inherit the proprietary files
include vendor/xiaomi/lime/BoardConfigVendor.mk

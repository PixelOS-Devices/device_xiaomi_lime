#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Enable AOSP recovery flashing
TARGET_USES_AOSP_RECOVERY := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from lime device
$(call inherit-product, device/xiaomi/lime/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_lime
PRODUCT_DEVICE := lime
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/lime_global/lime:12/SKQ1.211202.001/V13.0.3.0.SJQMIXM:user/release-keys

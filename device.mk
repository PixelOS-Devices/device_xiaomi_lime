#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi Minerva
$(call inherit-product, device/xiaomi/minerva/device-common.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Camera
PRODUCT_PACKAGES += \
    libpiex_shim

# Configuration files
include $(LOCAL_PATH)/audio/audio.mk

# IFAAService
PRODUCT_PACKAGES += \
    IFAAService

# Mlipay
PRODUCT_PACKAGES += \
    vendor.xiaomi.hardware.mlipay@1.1.vendor:64

PRODUCT_PACKAGES += \
    vendor.xiaomi.hardware.mtdservice@1.2.vendor:64

# NFC
TARGET_NFC_SKU := lemon

PRODUCT_PACKAGES += \
    android.hardware.nfc-service.st \
    nfc_nci.st21nfc.default

PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libchrome.vendor \
    NfcNci \
    SecureElement \
    Tag

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(TARGET_NFC_SKU)/android.hardware.nfc.ese.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(TARGET_NFC_SKU)/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(TARGET_NFC_SKU)/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(TARGET_NFC_SKU)/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(TARGET_NFC_SKU)/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.ese.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(TARGET_NFC_SKU)/android.hardware.se.omapi.ese.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(TARGET_NFC_SKU)/android.hardware.se.omapi.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(TARGET_NFC_SKU)/com.android.nfc_extras.xml

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResLime \
    SettingsProviderResLemon \
    SettingsProviderResLime \
    SettingsProviderResPomelo \
    SystemUIResLime \
    WifiResLemon \
    WifiResLime \
    WifiResPomelo

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/lime/lime-vendor.mk)

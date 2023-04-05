#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2022-2023 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := superior_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Supported Device Flags
TARGET_SUPPORTS_NOW_PLAYING := false
TARGET_INCLUDE_STOCK_ARCORE := true

#SuperioeOS Stuff
SUPERIOR_OFFICIAL := false
BUILD_WITH_GAPPS := true
USE_QUICKPIC := false
TARGET_GAPPS_ARCH := arm64
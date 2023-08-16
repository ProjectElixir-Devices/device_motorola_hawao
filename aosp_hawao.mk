#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/hawao/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Project-Elixir
IS_PHONE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
ELIXIR_BUILD_TYPE := OFFICIAL
BUILD_USERNAME := FPSensor
BUILD_HOSTNAME := Elixir
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_hawao
PRODUCT_DEVICE := hawao
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g42
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/hawao_g/hawao:12/S2SES32.28-70-8/6b1d4-2ad06e:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=hawao_g \
    PRIVATE_BUILD_DESC="hawao_g-user 12 S2SES32.28-70-8 6b1d4-2ad06e release-keys"



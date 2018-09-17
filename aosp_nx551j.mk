#
# Copyright (C) 2018 The LineageOS Project
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

# Boot animation
#TARGET_SCREEN_HEIGHT := 1080
#TARGET_SCREEN_WIDTH := 1920


# PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_ARCH := arm64
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit device configuration
$(call inherit-product, device/nubia/nx551j/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_nx551j
PRODUCT_DEVICE := nx551j
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Nubia M2
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX551J-user 6.0.1 MMB29M eng.nubia.20180327.124015 release-keys" \
    TARGET_DEVICE="NX551J"

BUILD_FINGERPRINT=nubia/NX551J/NX551J:6.0.1/MMB29M/eng.nubia.20180327.124015:user/release-keys \

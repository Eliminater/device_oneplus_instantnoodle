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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1440

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_instantnoodle
PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2023
CUSTOM_DEVICE := OnePlus8Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus8Pro \
    PRODUCT_NAME=OnePlus8Pro

# Copyright (C) 2020-2021 StatixOS

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

# Inherit from those products. Most specific first.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common StatixOS stuff

$(call inherit-product, vendor/statix/config/common.mk)

$(call inherit-product, vendor/statix/config/gsm.mk)

TARGET_USES_BLUR := true

# Inherit from violet device

$(call inherit-product, device/xiaomi/violet/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080

TARGET_INCLUDE_PIXEL_CHARGER := true

PRODUCT_NAME := statix_violet

PRODUCT_DEVICE := violet

PRODUCT_BRAND := Xiaomi

PRODUCT_MODEL := Redmi Note 7 Pro

PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \

    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210705.001 7380771 release-keys" \

    PRODUCT_NAME="violet"

    

PRODUCT_PROPERTY_OVERRIDES += \

    ro.build.fingerprint=google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys


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

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Palladium-OS stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Official
PALLADIUM_BUILD_TYPE := OFFICIAL

# FOD
EXTRA_FOD_ANIMATIONS := true
TARGET_HAS_FOD := true

# Palladium Specific props
PRODUCT_PRODUCT_PROPERTIES += \
  ro.palladiumdevice.maintainer=Chandu \
  ro.palladiumdevice.battery=4500mAh \
  ro.palladiumdevice.camera=48+16+5+2MP \
  ro.palladiumdevice.cpu=SDM865 \
  ro.palladiumdevice.display=6.55

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := palladium_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus8T \
    PRODUCT_NAME=OnePlus8T \
    PRIVATE_BUILD_DESC="coral-user 11 RQ3A.210905.001 7511028 release-keys"

BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.211001.001/7641976:user/release-keys
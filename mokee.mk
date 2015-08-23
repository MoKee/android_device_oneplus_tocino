# Copyright (C) 2015 The MoKee OpenSource Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bacon device
$(call inherit-product, device/oneplus/tocino/tocino.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_NAME := mk_tocino
PRODUCT_DEVICE := tocino
PRODUCT_MANUFACTURER := ONEPLUS
PRODUCT_MODEL := A2001

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BRAND := oneplus
TARGET_VENDOR := oneplus
TARGET_VENDOR_PRODUCT_NAME := tocino
TARGET_VENDOR_DEVICE_NAME := A2001
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A2001 PRODUCT_NAME=tocino

## Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=oneplus/tocino/A2001:5.1.1/LMY47V/1436933040:user/release-keys \
    PRIVATE_BUILD_DESC="tocino-user 5.1.1 LMY47V 28 dev-keys"
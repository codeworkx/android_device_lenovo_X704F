#
# Copyright 2019 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := X704F

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/X704F/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_X704F
PRODUCT_DEVICE := X704F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X704F
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hq_msm8953_64-user 7.1.1 NMF26F 1581 release-keys" \
    TARGET_DEVICE="TB-X704F"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X704F/X704F:7.1.1/NMF26F/TB-X704F_S000056_181015_ROW:user/release-keys

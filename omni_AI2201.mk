#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from AI2201 device
$(call inherit-product, device/asus/AI2201/device.mk)

PRODUCT_DEVICE := AI2201
PRODUCT_NAME := omni_AI2201
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_AI2201
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_AI2201-eng 99.87.36 SP2A.220405.004 2 test-keys"

BUILD_FINGERPRINT := asus/twrp_AI2201/AI2201:99.87.36/SP2A.220405.004/2:eng/test-keys

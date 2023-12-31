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

# Inherit from RMX3392 device
$(call inherit-product, device/realme/RMX3392/device.mk)

PRODUCT_DEVICE := RMX3392
PRODUCT_NAME := omni_RMX3392
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 9 Pro Plus
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3392-user 13 TP1A.220905.001 S.148ce43_518 release-keys"

BUILD_FINGERPRINT := realme/RMX3392/RE879EL1:13/TP1A.220905.001/S.148ce43_518:user/release-keys

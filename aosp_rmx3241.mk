#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from ossi device
$(call inherit-product, device/realme/RMX3241/device.mk)

PRODUCT_DEVICE := RMX3241
PRODUCT_NAME := pixelexpriance_rmx3241
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3241
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

#PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 13 TP1A.220905.001 1679042265638 release-keys"

#BUILD_FINGERPRINT := oplus/ossi/ossi:12/SP1A.210812.016/1679043773084:user/release-keys

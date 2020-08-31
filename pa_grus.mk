#
# Copyright (C) 2020 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/grus

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common stuff
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Inherit from grus device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pa_grus
PRODUCT_DEVICE := grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9 SE
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="flame-user 10 QQ3A.200805.001 6578210 release-keys" \
    PRODUCT_NAME="grus" \
    TARGET_DEVICE="grus"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/flame/flame:10/QQ3A.200705.002/6506677:user/release-keys 

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

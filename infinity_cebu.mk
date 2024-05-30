#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/cebu/device.mk)

# Inherit some common ProjectInfinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := DelightReza

BOARD_PRODUCTIMAGE_MINIMAL_PARTITION_RESERVED_SIZE := true
WITH_GAPPS := true
WITH_GMS := true

TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_cebu
PRODUCT_DEVICE := cebu
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(9) power
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/cebu_retail/cebu:11/RZCS31.Q2-57-12-14/3d8395:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cebu_retail \
    PRIVATE_BUILD_DESC="cebu_retail-user 11 RZCS31.Q2-57-12-14 3d8395 release-keys"

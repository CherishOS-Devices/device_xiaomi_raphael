#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Cherish stuff.
CHERISH_BUILD_TYPE := OFFICIAL
EXTRA_FOD_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
CHERISH_WITHGAPPS := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := cherish_raphael

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit from custom vendor
$(call inherit-product, vendor/ANXCamera/config.mk)

#Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cherish.maintainer=kawaiinull

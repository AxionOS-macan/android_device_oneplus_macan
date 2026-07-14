#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from macan device
$(call inherit-product, device/oneplus/macan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionAOSP
AXION_MAINTAINER := Paul
AXION_PROCESSOR := Snapdragon_8_Gen_5
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16
BYPASS_CHARGE_SUPPORTED := true
BYPASS_CHARGE_TOGGLE_PATH := /sys/class/oplus_chg/battery/mmi_charging_enable
PERF_DEFAULT_GOV := walt
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true

PRODUCT_NAME := lineage_macan
PRODUCT_DEVICE := macan
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2767

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1783421822719 release-keys" \
    BuildFingerprint=OnePlus/CPH2767IN/OP612DL1:16/BP2A.250605.015/B.R4T3.28692ee-3bd6e0-3b1467:user/release-keys \
    DeviceName=OP612DL1 \
    DeviceProduct=CPH2767 \
    SystemDevice=OP612DL1 \
    SystemName=CPH2767

#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# call the proprietary setup
$(call inherit-product-if-exists, vendor/xiaomi/kenzo/kenzo-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9326.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326.xml



# Fingerprint
PRODUCT_PACKAGES += \
    fingerprint.msm8952

# BSOD Killer
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.d/89bsod:$(TARGET_COPY_OUT_SYSTEM)/etc/init.d/89bsod

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/uinput-fpc.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Atmel_maXTouch_Touchscreen.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Atmel_maXTouch_Touchscreen.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/msm8976-tashalite-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/msm8976-tashalite-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-fpc.kl

# Ramdisk
PRODUCT_PACKAGES += \
    init.kenzo.rc

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Inherit from msm8956-common
$(call inherit-product, device/xiaomi/msm8956-common/msm8956.mk)

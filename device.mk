#
# Copyright (C) 2020 The LineageOS Project
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

# call the proprietary setup
$(call inherit-product, vendor/xiaomi/olivelite/olivelite-vendor.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_ce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_ce.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_ce_c3ik.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_ce_c3ik.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes_ce_c3ik.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_ce_c3ik.xml \
    $(LOCAL_PATH)/audio/mixer_paths_sdm439_pm8953_c3ik.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_sdm439_pm8953_c3ik.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-goodix.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.post_boot.sh \
    init.qcom.rc \
    init.target.rc \
    fstab.qcom

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

# Inherit from sdm439-common
$(call inherit-product, device/xiaomi/sdm439-common/ms8937.mk)


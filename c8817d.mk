#
# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := device/huawei/c8817d

# Audio calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/General_cal.acdb:system/etc/General_cal.acdb \
    $(LOCAL_PATH)/audio/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(LOCAL_PATH)/audio/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(LOCAL_PATH)/audio/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(LOCAL_PATH)/audio/Speaker_cal.acdb:system/etc/Speaker_cal.acdb

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Inherit the rest from msm8916-common
$(call inherit-product, device/huawei/msm8916-common/msm8916_32.mk)

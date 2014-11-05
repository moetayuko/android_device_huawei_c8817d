#
# Copyright (C) 2014 The CyanogenMod Project
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

#
# This empty Android.mk file exists to prevent the build system from
# automatically including any other Android.mk files under this directory.
#

#include $(CLEAR_VARS)
#LOCAL_MODULE       := wpa_supplicant.conf
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/wifi
#include $(BUILD_PREBUILT)

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),c8817d)
include device/huawei/c8817d/kernel/AndroidKernel.mk
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

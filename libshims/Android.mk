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

LOCAL_PATH := $(call my-dir)

# Fingerprint
include $(CLEAR_VARS)
LOCAL_MODULE := libshims_gxfpd
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := gxfpd_shim.cpp
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# Fingerprint VNDK dependencies
include $(CLEAR_VARS)
LOCAL_STATIC_LIBRARES := libbacktrace
LOCAL_MODULE := libbacktrace-vendor
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_STATIC_LIBRARES := libunwind
LOCAL_MODULE := libunwind-vendor
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# Camera
include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := libgui_vendor
LOCAL_MODULE := libshims_camera
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES := DisplayEventReceiver.cpp
LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)
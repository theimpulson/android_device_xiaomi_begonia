#
# Copyright (C) 2020 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),begonia)
  subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
  $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))

include $(CLEAR_VARS)

GATEKEEPER_SYMLINKS := $(TARGET_OUT_VENDOR)
$(GATEKEEPER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating gatekeeper symlinks: $@"
	@mkdir -p $@/lib/hw
	@mkdir -p $@/lib64/hw
	@ln -sf libSoftGatekeeper.so $@/lib/hw/gatekeeper.default.so
	@ln -sf libSoftGatekeeper.so $@/lib64/hw/gatekeeper.default.so

ALL_DEFAULT_INSTALLED_MODULES += $(GATEKEEPER_SYMLINKS)

VULKAN_SYMLINKS := $(TARGET_OUT_VENDOR)
$(VULKAN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating vulkan symlinks: $@"
	@mkdir -p $@/lib/hw/
	@mkdir -p $@/lib64/hw/
	@ln -sf $@/lib/egl/libGLES_VULKAN.so $@/lib/hw/vulkan.mt6785.so
	@ln -sf $@/lib64/egl/libGLES_VULKAN.so $@/lib64/hw/vulkan.mt6785.so

ALL_DEFAULT_INSTALLED_MODULES += $(VULKAN_SYMLINKS)

endif

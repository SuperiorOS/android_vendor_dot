# Copyright (C) 2018-19 The Superior OS Project
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

# Black & White
TARGET_MISC_BLOCK_OFFSET ?= 0

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.misc.block.offset=$(TARGET_MISC_BLOCK_OFFSET)

PRODUCT_PACKAGES += \
    boot_theme \
    misc_writer_system

# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),480)
     PRODUCT_COPY_FILES += vendor/superior/prebuilt/common/bootanimation/bootanimation-480p.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
     PRODUCT_COPY_FILES += vendor/superior/prebuilt/common/bootanimation/bootanimation-480p.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
     PRODUCT_COPY_FILES += vendor/superior/prebuilt/common/bootanimation/bootanimation-720p.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
     PRODUCT_COPY_FILES += vendor/superior/prebuilt/common/bootanimation/bootanimation-720p.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/superior/prebuilt/common/bootanimation/bootanimation-1080p.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
     PRODUCT_COPY_FILES += vendor/superior/prebuilt/common/bootanimation/bootanimation-1080p.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
else
     $(warning TARGET_BOOT_ANIMATION_RES is invalid or undefined, using generic bootanimation)
PRODUCT_COPY_FILES += \
    vendor/superior/prebuilt/common/bootanimation/bootanimation-1080p.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
    vendor/superior/prebuilt/common/bootanimation/bootanimation-1080p.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
endif

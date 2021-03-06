# Copyright (C) 2011 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS += device/samsung/galaxy5/overlay

PRODUCT_PACKAGES += \
    copybit.msm7k \
    copybit.galaxy5 \
    g5sensord \
    gps.galaxy5 \
    gralloc.galaxy5 \
    libOmxCore \
    CMTimers \
    FM \
    CMDroidwall \
    lights.msm7k \
    rzscontrol \
    screencap \
    sensors.galaxy5 \
    setup_fs

# Recovery tools
PRODUCT_PACKAGES += \
    dump_image \
    e2fsck \
    toggleshutter \
    patchlcs \
    erase_image \
    flash_image \
    make_ext4fs

# EuropaParts
PRODUCT_PACKAGES += \
    EuropaParts

# Service Mode Secret Code
PRODUCT_PACKAGES += \
    SamsungServiceMode

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni \
    LiveWallpapers \
    VisualizationWallpapers

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# MADTeam modifications
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/etc/init.d/05mountsd:system/etc/init.d/05mountsd

# EuropaParts support files
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/bin/handle_europaparts:system/bin/handle_europaparts \
    device/samsung/galaxy5/prebuilt/bin/reodexer:system/bin/reodexer \
    device/samsung/galaxy5/prebuilt/etc/init.d/02europaparts:system/etc/init.d/02europaparts \
    device/samsung/galaxy5/prebuilt/etc/init.europaparts.rc:system/etc/init.europaparts.rc \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/europaparts/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/europaparts/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/galaxy5/prebuilt/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/galaxy5/prebuilt/modules/sec_param.ko:root/lib/modules/sec_param.ko

# Board-specific init & scripts
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/init.gt-i5500.rc:root/init.gt-i5500.rc \
    device/samsung/galaxy5/prebuilt/ueventd.gt-i5500.rc:root/ueventd.gt-i5500.rc

# Workaround for wifi & bluetooth mac addresses
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/bin/get_macaddrs:system/bin/get_macaddrs

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/galaxy5/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/samsung/galaxy5/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/galaxy5/prebuilt/modules/ar6000.ko:system/wifi/ar6000.ko

# VOLD configuration
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Media profiles
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/etc/media_profiles.xml:/system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/samsung/galaxy5/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/samsung/galaxy5/prebuilt/poweron.ogg:system/media/poweron.ogg \
    device/samsung/galaxy5/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

## application
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/app/BMKG.apk:system/app/BMKG.apk

## Tweaks
PRODUCT_COPY_FILES += \
    device/samsung/galaxy5/prebuilt/70zipalign:system/etc/init.d/70zipalign \
    device/samsung/galaxy5/prebuilt/zipalign:system/bin/zipalign \
    device/samsung/galaxy5/prebuilt/be_photo:system/etc/be_photo \
    device/samsung/galaxy5/prebuilt/be_movie:system/etc/be_movie \
    device/samsung/galaxy5/app/ics.apk:system/app/ics.apk

# Keymap properties
PRODUCT_PROPERTY_OVERRIDES += \
    android.keychar.europa_keypad0=/system/usr/keychars/europa_keypad0.kcm.bin \
    android.keylayout.europa_headset=/system/usr/keylayout/europa_headset.kl \
    android.keylayout.europa_keypad0=/system/usr/keylayout/europa_keypad0.kl \
    hw.keyboards.0.devname=europa_keypad0 \
    hw.keyboards.65538.devname=europa_headset

# Compcache properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=18

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/samsung/galaxy5/prebuilt/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, vendor/samsung/galaxy5/galaxy5-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_ww_supl.mk)

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi

PRODUCT_NAME := samsung_galaxy5
PRODUCT_DEVICE := galaxy5
PRODUCT_MODEL := Galaxy5
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

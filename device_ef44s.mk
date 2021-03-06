#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/pantech/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef44s/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/ramdisk/init.rc:root/init.rc \
    device/pantech/ef44s/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/pantech/ef44s/ramdisk/init.target.rc:root/init.target.rc \
    device/pantech/ef44s/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/pantech/ef44s/ramdisk/init.pantech.usb.rc:root/init.pantech.usb.rc \
    device/pantech/ef44s/ramdisk/init.pantech.usb.sh:root/init.pantech.usb.sh \
    device/pantech/ef44s/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/pantech/ef44s/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/pantech/ef44s/ramdisk/ueventd.rc:root/ueventd.rc \
    device/pantech/ef44s/ramdisk/initlogo.rle:root/initlogo.rle

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/pantech/ef44s/configs/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/pantech/ef44s/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/pantech/ef44s/configs/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    device/pantech/ef44s/configs/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/pantech/ef44s/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/pantech/ef44s/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/pantech/ef44s/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# MSM8960 stock firmwares
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    device/pantech/ef44s/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/pantech/ef44s/firmware/vidc.b00:/system/etc/firmware/vidc.b00 \
    device/pantech/ef44s/firmware/vidc.b01:/system/etc/firmware/vidc.b01 \
    device/pantech/ef44s/firmware/vidc.b02:/system/etc/firmware/vidc.b02 \
    device/pantech/ef44s/firmware/vidc.b03:/system/etc/firmware/vidc.b03 \
    device/pantech/ef44s/firmware/vidc.mdt:/system/etc/firmware/vidc.mdt \
    device/pantech/ef44s/firmware/vidcfw.elf:/system/etc/firmware/vidcfw.elf

# Jellybean Adreno firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/pantech/ef44s/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/pantech/ef44s/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/pantech/ef44s/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/pantech/ef44s/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/pantech/ef44s/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/pantech/ef44s/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Jellybean Adreno libs
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/jb_libs/lib/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
    device/pantech/ef44s/jb_libs/lib/libC2D2.so:/system/lib/libC2D2.so \
    device/pantech/ef44s/jb_libs/lib/libgsl.so:/system/lib/libgsl.so \
    device/pantech/ef44s/jb_libs/lib/libOpenVG.so:/system/lib/libOpenVG.so \
    device/pantech/ef44s/jb_libs/lib/libsc-a2xx.so:/system/lib/libsc-a2xx.so \
    device/pantech/ef44s/jb_libs/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    device/pantech/ef44s/jb_libs/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/pantech/ef44s/jb_libs/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/pantech/ef44s/jb_libs/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/pantech/ef44s/jb_libs/egl/libGLESv2S3D_adreno200.so:/system/lib/egl/libGLESv2S3D_adreno200.so \
    device/pantech/ef44s/jb_libs/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so


# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# GPS libs (Use LG F160's libs)
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/gps/libgps.so:/system/lib/libgps.so \
    device/pantech/ef44s/gps/libgps.utils.so:/system/lib/libgps.utils.so \
    device/pantech/ef44s/gps/libloc_adapter.so:/system/lib/libloc_adapter.so \
    device/pantech/ef44s/gps/libloc_api_v02.so:/system/lib/libloc_api_v02.so \
    device/pantech/ef44s/gps/libloc_eng.so:/system/lib/libloc_eng.so \
    device/pantech/ef44s/gps/libloc_ext.so:/system/lib/libloc_ext.so \
    device/pantech/ef44s/gps/gps.default.so:/system/lib/hw/gps.default.so

# Media config
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/configs/media_profiles.xml:system/etc/media_profiles.xml

# vold config
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/pantech/ef44s/configs/nvram_4334.txt:/system/etc/nvram_4334.txt

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/prebuilt/fw_bcmdhd.bin:/system/vendor/firmware/fw_bcmdhd.bin \
    device/pantech/ef44s/prebuilt/fw_bcmdhd_apsta.bin:/system/vendor/firmware/fw_bcmdhd_apsta.bin \
    device/pantech/ef44s/prebuilt/fw_bcmdhd_mfg.bin:/system/vendor/firmware/fw_bcmdhd_mfg.bin \
    device/pantech/ef44s/prebuilt/fw_bcmdhd_p2p.bin:/system/vendor/firmware/fw_bcmdhd_p2p.bin

# Nfc lib
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/prebuilt/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so

# thermald config
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/configs/thermald.conf:/system/etc/thermald.conf

# Sound effects
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/configs/audio_effects.conf:system/etc/audio_effects.conf

# DSP
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/dsp/snd_soc_msm/DL_REC:/system/etc/snd_soc_msm/DL_REC \
    device/pantech/ef44s/dsp/snd_soc_msm/DL_REC_2x:/system/etc/snd_soc_msm/DL_REC_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/FM_A2DP_REC:/system/etc/snd_soc_msm/FM_A2DP_REC \
    device/pantech/ef44s/dsp/snd_soc_msm/FM_A2DP_REC_2x:/system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/FM_Digital_Radio:/system/etc/snd_soc_msm/FM_Digital_Radio \
    device/pantech/ef44s/dsp/snd_soc_msm/FM_Digital_Radio_2x:/system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/FM_REC:/system/etc/snd_soc_msm/FM_REC \
    device/pantech/ef44s/dsp/snd_soc_msm/FM_REC_2x:/system/etc/snd_soc_msm/FM_REC_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/HiFi:/system/etc/snd_soc_msm/HiFi \
    device/pantech/ef44s/dsp/snd_soc_msm/HiFi_2x:/system/etc/snd_soc_msm/HiFi_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/HiFi_Low_Power:/system/etc/snd_soc_msm/HiFi_Low_Power \
    device/pantech/ef44s/dsp/snd_soc_msm/HiFi_Low_Power_2x:/system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/HiFi_Rec:/system/etc/snd_soc_msm/HiFi_Rec \
    device/pantech/ef44s/dsp/snd_soc_msm/HiFi_Rec_2x:/system/etc/snd_soc_msm/HiFi_Rec_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/pantech/ef44s/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/UL_DL_REC:/system/etc/snd_soc_msm/UL_DL_REC \
    device/pantech/ef44s/dsp/snd_soc_msm/UL_DL_REC_2x:/system/etc/snd_soc_msm/UL_DL_REC_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/Voice_Call:/system/etc/snd_soc_msm/Voice_Call \
    device/pantech/ef44s/dsp/snd_soc_msm/Voice_Call_2x:/system/etc/snd_soc_msm/Voice_Call_2x \
    device/pantech/ef44s/dsp/snd_soc_msm/Voice_Call_IP:/system/etc/snd_soc_msm/Voice_Call_IP \
    device/pantech/ef44s/dsp/snd_soc_msm/Voice_Call_IP_2x:/system/etc/snd_soc_msm/Voice_Call_IP_2x

# Camera firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/camera/CE150F00.bin:root/CE150F00.bin \
    device/pantech/ef44s/camera/CE150F01.bin:root/CE150F01.bin \
    device/pantech/ef44s/camera/CE150F02.bin:root/CE150F02.bin \
    device/pantech/ef44s/camera/CE150F03.bin:root/CE150F03.bin


# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/pantech/ef44s/keylayout/qt602240_ts_input.kl:system/usr/keylayout/qt602240_ts_input.kl \
    device/pantech/ef44s/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/pantech/ef44s/idc/qt602240_ts_input.idc:system/usr/idc/qt602240_ts_input.idc

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# Torch
PRODUCT_PACKAGES += \
    Torch

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# MMS fixes
FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

# call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef44s/ef44s-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

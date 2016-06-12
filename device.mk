#
# Copyright (C) 2014 The Android Open-Source Project
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
$(call inherit-product-if-exists, vendor/motorola/clark/clark-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/audio/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/audio/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/audio/audio_ext_spkr.conf:system/vendor/etc/audio_ext_spkr.conf \
    $(LOCAL_PATH)/audio/audio_platform_info_i2s.xml:system/etc/audio_platform_info_i2s.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

PRODUCT_PACKAGES += \
    audio.primary.msm8992 \
    audio_policy.msm8992 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessingdescriptors \
    libqcomvoiceprocessing \
    libtinycompress \
    libtinyxml \
    libtinyalsa \
    tinymix \
    Eleven

# Camera
PRODUCT_PACKAGES += \
    camera.msm8992 \
    libcamera \
    libqomx_core \
    libmm-qcamera \
    libmmcamera_interface \
    libmmjpeg_interface \
    mm-qcamera-app \
    Gallery2 \
    Snap

# CMActions
PRODUCT_PACKAGES += \
    CMActions \
    libjni_CMActions
    
# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560

# Display

# This device is 560dpi.  However the platform doesn't
# currently contain all of the bitmaps at 560dpi density so
# we do this little trick to fall back to the xxhdpi version
# if the 560dpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

PRODUCT_PACKAGES += \
    pp_calib_data_mipi_mot_cmd_inx_QHD_0_570_v0.xml

PRODUCT_PACKAGES += \
    hwcomposer.msm8992 \
    gralloc.msm8992 \
    copybit.msm8992 \
    memtrack.msm8992 \
    liboverlay \
    libqdutils \
    libqdMetaData

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mmi.touch.sh \
    init.mmi.usb.rc \
    init.qcom.rc \
    init.qcom.power.rc \
    ueventd.qcom.rc

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml \
    libnfnetlink \
    libnetfilter_conntrack

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8992

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Memory
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# NFC packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    nfc_nci.bcm2079x.default \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm-20795a20.conf:system/etc/libnfc-brcm-20795a20.conf

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# Perf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/etc/msm_irqbalance.conf

PRODUCT_TAGS += dalvik.gc.type-precise

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml
    frameworks/native/data/etc/android.hardware.audio.pro.xml:system/etc/permissions/android.hardware.audio.pro.xml \
    
# Power
PRODUCT_PACKAGES += \
    power.msm8992

# Radio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/qcril.db:system/etc/motorola/qcril.db \
    $(LOCAL_PATH)/configs/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libqsap_sdk \
    ebtables \
    ethertypes \
    libnl_2 \
    libbson \
    librmnetctl \
    libxml2 \
    LatinIME

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensorhub-blacklist.txt:system/etc/firmware/sensorhub-blacklist.txt

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermanager.xml:system/etc/thermanager.xml \
    $(LOCAL_PATH)/configs/thermal-engine-clark.conf:system/etc/thermal-engine-clark.conf

PRODUCT_PACKAGES += \
    thermanager

# Timekeep
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep

# Doze
PRODUCT_PACKAGES += \
    MotoDoze

# Wifi Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/qca_cld/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    flp.conf \
    gps.conf \
    quipc.conf \
    sap.conf    


# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    e2fsck \
    make_ext4fs \
    setup_fs

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.config=mtp,adb \
    persist.sys.usb.config=mtp,adb


$(call inherit-product-if-exists, hardware/qcom/msm8994/msm8992.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8994/msm8994-gpu-vendor.mk)

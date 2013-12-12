# Copyright (C) 2012 The CyanogenMod Project
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


BOARD_VENDOR := htc

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm8660-common/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_VARIANT := cortex-a8
ARCH_ARM_HAVE_ARMV7A := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_ARCH_LOWMEM := true
TARGET_CPU_SMP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_ENABLE_AV_ENHANCEMENTS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Graphics
TARGET_USES_ION := true
TARGET_HAS_OLD_QCOM_ION := true
BOARD_HAVE_OLD_ION_API := true

# FB legacy
BOARD_EGL_NEEDS_LEGACY_FB := true

# Use legacy MM heap behavior
TARGET_DISPLAY_INSECURE_MM_HEAP := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := legacy

# Audio
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO -DLEGACY_QCOM_VOICE
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_QCOM_TUNNEL_LPA_ENABLED := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/msm8660-common/bluetooth/vnd_msm8660.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/htc/msm8660-common/bluetooth/include

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_USES_PMEM_ADSP := true
BOARD_USES_PMEM_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW
BOARD_HAVE_HTC_FFC := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true

# Camera wrapper
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36

# QCOM BSP (Board Support Package)
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Sensors
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DREFRESH_RATE=60 -DHTC_RGBA_8888_OFFSET
COMMON_GLOBAL_CFLAGS += -DGENLOCK_IOC_DREADLOCK -DUSE_GENLOCK
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_NEEDS_FNW := true
#TARGET_QCOM_HDMI_OUT := true
#TARGET_QCOM_HDMI_RESOLUTION_AUTO := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_POST_PROCESSING := true
BOARD_EGL_CFG := device/htc/msm8660-common/configs/egl.cfg



# Wifi related defines
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
BOARD_LEGACY_NL80211_STA_EVENTS := true

# Lights
# legacy LIBLIGHT naming
TARGET_PROVIDES_LIBLIGHT := true
TARGET_PROVIDES_LIBLIGHTS := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Hardware tunables
BOARD_HARDWARE_CLASS := device/htc/msm8660-common/cmhw

# Preload the boot animation to avoid jerkiness
TARGET_BOOTANIMATION_PRELOAD := true

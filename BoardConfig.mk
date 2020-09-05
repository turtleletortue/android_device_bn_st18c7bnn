DEVICE_PATH := device/bn/st18c7bnn
BOARD_VENDOR := nook

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

-include vendor/bn/st18c7bnn/BoardConfigVendor.mk


# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Bootanimation
TARGET_SCREEN_WIDTH := 1024
TARGET_SCREEN_HEIGHT := 600

# Platform
TARGET_BOARD_PLATFORM := mt8163
TARGET_BOARD_PLATFORM_GPU := mali-720mp2

# Architecture
#TARGET_ARCH := arm
#TARGET_CPU_VARIANT := cortex-a7
#TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_ARCH_VARIANT_CPU := cortex-a7
#TARGET_CPU_VARIANT:= cortex-a7
#TARGET_CPU_ABI := armeabi-v7a
#TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_SMP := true
#TARGET_USES_64_BIT_BINDER := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a15
TARGET_BOARD_SUFFIX := _32


# Kernel Config
#BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
#BOARD_KERNEL_BASE := 0x40078000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_OFFSET := 0x00008000
#BOARD_KERNEL_TAGS_OFFSET := 0x0df88000
#BOARD_RAMDISK_OFFSET := 0x05f88000
#BOARD_SECOND_OFFSET := 0x00f00000

#BOARD_MKBOOTIMG_ARGS := \
#    --kernel_offset $(BOARD_KERNEL_OFFSET) \
#    --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
#    --second_offset $(BOARD_SECOND_OFFSET)   \
#    --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_SOURCE := kernel/bn/st18c7bnn/
#TARGET_KERNEL_CONFIG := st18c7bnn_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := st18c7bnn_defconfig
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/#aarch64-linux-android-4.9/bin/aarch64-linux-android-

#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

TARGET_PREBUILT_KERNEL := device/bn/st18c7bnn/kernel
#BOARD_MKBOOTIMG_ARGS := --pagesize 2048 --base 0x40078000 --kernel_offset 0x00008000 --ramdisk_offset 0x05f88000 --second_offset 0x00f00000 --tags_offset 0x0df88000

TARGET_KERNEL_ARCH := arm
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x14000000
BOARD_RAMDISK_OFFSET := 0x291CCE00
#0x03F88000
#0x291CCE00
#0x15000000
BOARD_SECOND_OFFSET := 0x00f00000

BOARD_KERNEL_CMDLINE := "bootopt=64S3,32N2,32N2 androidboot.selinux=permissive"

BOARD_MKBOOTIMG_ARGS := \
    --base $(BOARD_KERNEL_BASE) \
    --pagesize $(BOARD_KERNEL_PAGESIZE) \
    --kernel_offset $(BOARD_KERNEL_OFFSET) \
    --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
    --second_offset $(BOARD_SECOND_OFFSET)   \
    --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
    --cmdline $(BOARD_KERNEL_CMDLINE)

BOARD_KERNEL_IMAGE_NAME := zImage-dtb
# For Mediatek Boot Image Headers
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

# Build Vendor Image
TARGET_COPY_OUT_VENDOR := vendor
BOARD_USES_VENDORIMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4


# Binder API version
#TARGET_USES_64_BIT_BINDER := true


# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# WIFI
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# BT
BOARD_HAS_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Graphics
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
TARGET_USES_HWC2 := true
TARGET_USES_HWC2ON1ADAPTER := false
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false

# Panel vsync offsets
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
BOARD_VENDORIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12877312000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USES_MKE2FS := true

TARGET_USERIMAGES_USE_F2FS := true

BLOCK_BASED_OTA := true

# Seccomp filters
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Shims
#TARGET_LD_SHIM_LIBS := \
#    /system/vendor/lib/libwvm.so|libshim_wvm.so \
#    /system/lib/libgui_ext.so|libshim_gui.so \
#    /system/lib64/libgui_ext.so|libshim_gui.so \
#   /system/lib/libui_ext.so|libshim_ui.so \
#    /system/lib64/libui_ext.so|libshim_ui.so \
#    /system/bin/boot_logo_updater|libshim_asc.so \
#    /system/bin/kpoc_charger|libshim_asc.so \
#    /system/lib/libshowlogo.so|libshim_asc.so \
#    /system/bin/xlog|libshim_xlog.so \
#    /system/bin/program_binary_service|libshim_program_binary_service.so \
#    /system/lib/hw/audio.primary.mt8163.so|libshim_audio.so \
#    /system/lib64/hw/audio.primary.mt8163.so|libshim_audio.so \
#    /system/bin/audiocmdservice_atci|libshim_audio.so \
#    /system/lib/libcam_utils.so|libshim_asc.so \
#    /system/lib64/libcam_utils.so|libshim_asc.so \
#    /system/lib/libcam.utils.sensorlistener.so|libshim_gui.so \
#    /system/lib64/libcam.utils.sensorlistener.so|libshim_gui.so \
#    /system/lib/libsource.so|libshim_asc.so \
#    /system/lib64/libsource.so|libshim_asc.so \
#    /system/bin/sink|libshim_asc.so \
#    /system/lib/libsink.so|libshim_asc.so \
#    /system/lib64/libsink.so|libshim_asc.so \
#    /system/lib/libstagefright_soft_ddpdec.so|libshim_omx.so

# Software Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/configs/compatibility_matrix.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE:= st18c7bnnxx

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Fix video autoscaling on old OMX decoders
TARGET_OMX_LEGACY_RESCALING:= true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Camera
TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true
#TARGET_USES_NON_TREBLE_CAMERA := true
#USE_CAMERA_STUB := true
#TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_mtk

#BACKLIGHTS
TARGET_PROVIDES_LIBLIGHT := true

# System Prop
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

#SENSORS
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Vendor Security Patch
#VENDOR_SECURITY_PATCH := 2020-02-12


#Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true

# Disable API check
WITHOUT_CHECK_API := true

# System Prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery.fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Sepolicy
BOARD_SEPOLICY_DIRS += \
        $(DEVICE_PATH)/sepolicy \
        $(DEVICE_PATH)/sepolicy-mtk/basic/non_plat \
        $(DEVICE_PATH)/sepolicy-mtk/bsp/non_plat 

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
        $(DEVICE_PATH)/sepolicy-mtk/basic/plat_public \
        $(DEVICE_PATH)/sepolicy-mtk/bsp/plat_public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
        $(DEVICE_PATH)/sepolicy-mtk/basic/plat_private \
        $(DEVICE_PATH)/sepolicy-mtk/bsp/plat_private

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
PRODUCT_COMPATIBILITY_MATRIX_LEVEL_OVERRIDE := 27


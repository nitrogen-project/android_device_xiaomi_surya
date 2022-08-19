LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.vibrator.impl.xiaomi_surya
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 64
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/lib64

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libcutils \
    libutils \
    liblog \
    libbinder_ndk

LOCAL_STATIC_LIBRARIES := \
    android.hardware.vibrator-V1-ndk_platform

LOCAL_HEADER_LIBRARIES += \
    libutils_headers \
    libhardware_headers

LOCAL_SRC_FILES := \
        Vibrator.cpp

LOCAL_C_INCLUDES := \
   external/libxml2/include \
   external/icu/icu4c/source/common

LOCAL_CFLAGS += -Wno-unused-parameter -Wno-unused-variable

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.vibrator.service.xiaomi_surya
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_STEM := vendor.qti.hardware.vibrator.service.xiaomi_surya

LOCAL_REQUIRED_MODULES := \
    vendor.qti.hardware.vibrator.impl.xiaomi_surya \
    vendor.qti.hardware.vibrator.service.xiaomi_surya.rc \
    vendor.qti.hardware.vibrator.service.xiaomi_surya.xml \
    excluded-input-devices.xml

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libcutils \
    libutils \
    liblog \
    libbinder_ndk \
    vendor.qti.hardware.vibrator.impl.xiaomi_surya

LOCAL_STATIC_LIBRARIES := \
    android.hardware.vibrator-V1-ndk_platform

LOCAL_HEADER_LIBRARIES += \
    libutils_headers \
    libhardware_headers

LOCAL_SRC_FILES := \
    effect.cpp \
    service.cpp

LOCAL_C_INCLUDES := \
   external/libxml2/include \
   external/icu/icu4c/source/common

LOCAL_CFLAGS += -Wno-unused-parameter -Wno-unused-variable

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.vibrator.service.xiaomi_surya.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := vendor.qti.hardware.vibrator.service.xiaomi_surya.rc
LOCAL_SRC_FILES := vendor.qti.hardware.vibrator.service.xiaomi_surya.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.vibrator.service.xiaomi_surya.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/vintf/manifest
LOCAL_MODULE_STEM := vendor.qti.hardware.vibrator.service.xiaomi_surya.xml
LOCAL_SRC_FILES := vendor.qti.hardware.vibrator.service.xiaomi_surya.xml
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := excluded-input-devices.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc
LOCAL_MODULE_STEM := excluded-input-devices.xml
LOCAL_SRC_FILES := excluded-input-devices.xml
include $(BUILD_PREBUILT)


LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.lights-service.qti-surya
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_INSTALLED_MODULE_STEM := android.hardware.lights-service.qti

LOCAL_SRC_FILES := Lights.cpp main.cpp

LOCAL_SHARED_LIBRARIES := \
        libbase \
        liblog \
        libhardware \
        libbinder_ndk

LOCAL_STATIC_LIBRARIES := \
        android.hardware.light-V1-ndk

include $(BUILD_EXECUTABLE)

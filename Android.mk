LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := omc-decoder.cpp
LOCAL_MODULE := libomc-decoder
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_CFLAGS := -fexceptions
LOCAL_LDLIBS := -lz
LOCAL_LDFLAGS := -static
include $(BUILD_EXECUTABLE)

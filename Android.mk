LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),st18c7bnn)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE     := libriru_edxposed
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	jni/external/include
LOCAL_CPPFLAGS += $(CPPFLAGS)
LOCAL_STATIC_LIBRARIES := xhook
LOCAL_LDLIBS += -ldl -llog
LOCAL_LDFLAGS := -Wl

LOCAL_SRC_FILES:= \
  main.cpp \
  native_hook/native_hook.cpp \
  include/misc.cpp \
  include/riru.c \
  yahfa/HookMain.c \
  yahfa/trampoline.c \
  java_hook/java_hook.cpp \
  inject/framework_hook.cpp \
  inject/config_manager.cpp

include $(BUILD_SHARED_LIBRARY)
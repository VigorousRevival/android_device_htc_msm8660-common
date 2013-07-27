ifneq ($(filter msm8660,$(TARGET_BOARD_PLATFORM)),)
    include $(all-subdir-makefiles)
endif

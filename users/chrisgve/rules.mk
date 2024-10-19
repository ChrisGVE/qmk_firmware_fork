SHIFT_ENABLE = yes

LTO_ENABLE = yes
SRC += chrisgve.c

ifdef USER_NAME
	ifeq ($(strip $(USER_NAME)), chrisgve)
		OPT_DEFS += -DCHRISGVE
	endif
endif

ifeq ($(strip $(REDUCE_RGB)), yes)
	OPT_DEFS += -DREDUCE_RGB
endif

ifeq ($(strip $(MACROS_ENABLE)), yes)
	OPT_DEFS += -DMACROS_ENABLE
endif

ifeq ($(strip $(REMOVE_DEBOUNCE)), yes)
	OPT_DEFS += -DREMOVE_DEBOUNCE
endif

ifeq ($(strip $(MODIFIERS_ENABLE)), yes)
	OPT_DEFS += -DMODIFIERS_ENABLE
endif

ifeq ($(strip $(TAPPING_TERM_PER_KEY)), yes)
	OPT_DEFS += -DTAPPING_TERM_PER_KEY
endif

ifeq ($(strip $(RGBLIGHT_DISABLE)), yes)
	OPT_DEFS += -DRGBLIGHT_DISABLE
endif

ifeq ($(strip $(PERMISSIVE_HOLD_PER_KEY)), yes)
	OPT_DEFS += -DPERMISSIVE_HOLD_PER_KEY
endif

ifeq ($(strip $(HOLD_ON_OTHER_KEY_PRESS_PER_KEY)), yes)
	OPT_DEFS += -DHOLD_ON_OTHER_KEY_PRESS_PER_KEY
endif

ifeq ($(strip $(RETRO_TAPPING_PER_KEY)), yes)
	OPT_DEFS += -DRETRO_TAPPING_PER_KEY
endif

ifeq ($(strip $(TAPPING_FORCE_HOLD_PER_KEY)), yes)
	OPT_DEFS += -DTAPPING_FORCE_HOLD_PER_KEY
endif

ifeq ($(strip $(PERMISSIVE_HOLD)), yes)
	OPT_DEFS += -DPERMISSIVE_HOLD
endif

ifeq ($(strip $(DYNAMIC_TAPPING_TERM_ENABLE)), yes)
	OPT_DEFS += -DDYNAMIC_TAPPING_TERM_ENABLE
endif

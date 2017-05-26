# -*- makefile -*-
#
# This makefile fragment has (default) configuration
# settings for building MCS.

# DO NOT EDIT THIS FILE! Create config.make and override settings
# there.

# Use UTF-8 as the default encoding for compilers
CODEPAGE = 65001

RUNTIME_FLAGS =
TEST_HARNESS = $(topdir)/class/lib/$(PROFILE_DIRECTORY)/$(PARENT_PROFILE)nunit-lite-console.exe
PLATFORM_DEBUG_FLAGS = /debug:portable
MCS_FLAGS = 
MBAS_FLAGS = -debug
ifndef CFLAGS
CFLAGS = -g -O2
endif
prefix = /usr/local
exec_prefix = $(prefix)
mono_libdir = $(exec_prefix)/lib
sysconfdir = $(prefix)/etc
#RUNTIME = mono
RUNTIME = false
TEST_RUNTIME = MONO_PATH="./$(PLATFORM_PATH_SEPARATOR)$(topdir)/class/lib/$(PROFILE_DIRECTORY)$(PLATFORM_PATH_SEPARATOR)$(TEST_MONO_PATH)$(PLATFORM_PATH_SEPARATOR)$$MONO_PATH" $(RUNTIME) --debug

# In case you want to add MCS_FLAGS, this lets you not have to
# keep track of the default value

DEFAULT_MCS_FLAGS := $(MCS_FLAGS)
DEFAULT_MBAS_FLAGS := $(MBAS_FLAGS)
DEFAULT_PROFILE := net_4_x

# You shouldn't need to set these but might on a 
# weird platform.

# CC = cc
# SHELL = /bin/sh
# MAKE = gmake 

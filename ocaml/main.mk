.ONESHELL:
SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

include $(SELF_DIR)/_install.mk
include $(SELF_DIR)/_lint.mk

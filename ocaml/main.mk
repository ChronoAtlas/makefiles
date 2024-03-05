.ONESHELL:
SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

.PHONY: all
all:
	dune build

include $(SELF_DIR)/_lint.mk
include $(SELF_DIR)/_test.mk
include $(SELF_DIR)/_dev.mk
include $(SELF_DIR)/_docs.mk

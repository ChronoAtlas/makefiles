.ONESHELL:
SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

.PHONY: all
all: $(COMPONENT)

include $(SELF_DIR)/_install.mk
include $(SELF_DIR)/_lint.mk

$(COMPONENT):
	dune build

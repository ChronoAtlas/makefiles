.ONESHELL:
SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

.PHONY: all
all: bin/$(COMPONENT).1
	dune build

bin/$(COMPONENT).1:
	dune exec bin/main.exe -- --help=groff >$@

include $(SELF_DIR)/_lint.mk
include $(SELF_DIR)/_test.mk
include $(SELF_DIR)/_dev.mk

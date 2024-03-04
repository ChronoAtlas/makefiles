bin/$(COMPONENT).1:
	dune exec bin/main.exe -- --help=groff >$@

.PHONY: docs
docs: bin/$(COMPONENT).1
	dune build @doc

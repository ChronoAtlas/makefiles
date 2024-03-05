.PHONY: docs
docs: $(MANPAGES)
	dune build @doc

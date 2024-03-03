.PHONY: lint
lint:
	ocamlformat --check $$(find . -name '*.ml' -o -name '*.mli' -type f | grep -v '^\./_build')

.PHONY: fix
fix:
	ocamlformat --inplace $$(find . -name '*.ml' -o -name '*.mli' -type f | grep -v '^\./_build')

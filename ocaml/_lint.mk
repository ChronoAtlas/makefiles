.PHONY: lint
lint:
	ocamlformat --check $$(find . -name '*.ml' -type f)

fix:
	ocamlformat --inplace $$(find . -name '*.ml' -type f)

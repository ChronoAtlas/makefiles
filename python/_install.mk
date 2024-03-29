.PHONY: install
install: $(VERSION)
	pip install .

.PHONY: install-all
install-all: $(VERSION)
	pip install -e '.[all]'

.PHONY: install-hooks
install-hooks:
	for hook in ./hooks/*; do \
		ln -sf ../../hooks/$$(basename $$hook) .git/hooks/$$(basename $$hook); \
	done

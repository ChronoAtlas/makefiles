.PHONY: install-all
install-all:
	opam install $$( \
		find . -type f -name 'dune' \
			| grep -v '^test' \
			| xargs cat \
			| awk '/libraries/ {gsub(/\(|\)/,""); for (i=2; i<=NF; i++) printf "%s ", $$i; print ""}' \
			| tr ' ' '\n' \
			| sort \
			| uniq \
			| grep -v $(COMPONENT) \
			| tr '\n' ' ' \
	)

.PHONY: install
install:
	opam install $$( \
		find . -type f -name 'dune' \
			| xargs cat \
			| awk '/libraries/ {gsub(/\(|\)/,""); for (i=2; i<=NF; i++) printf "%s ", $$i; print ""}' \
			| tr ' ' '\n' \
			| sort \
			| uniq \
			| grep -v $(COMPONENT) \
			| tr '\n' ' ' \
	)

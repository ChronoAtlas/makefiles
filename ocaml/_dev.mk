.PHONY: dev
dev:
	docker build . -f Dockerfile.dev -t ocamlbuilder
	docker run -it -v "$(pwd)":/usr/app --network host -w /usr/app ocamlbuilder /bin/bash

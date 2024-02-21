.PHONY: test
test: unit-test integration-test

.PHONY: unit-test
unit-test: $(VERSION)
	-pytest tests/unit_tests --log-cli-level=INFO
	ret=$$?
	test "$$ret" = 5 && ret=0
	exit $$ret

.PHONY: integration-test
integration-test: $(VERSION)
	docker-compose -f tests/docker-compose.yaml up -d
	-pytest tests/integration_tests --log-cli-level=INFO
	ret=$$?
	docker-compose -f tests/docker-compose.yaml down
	test "$$ret" = 5 && ret=0
	exit $$ret

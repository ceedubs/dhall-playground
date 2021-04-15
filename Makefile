.PHONY: check-format check-lint format lint run-tests test

build: format lint

check-format:
	find . -name '*.dhall' -print0 | xargs -0 -n 1 -i dhall --unicode format --inplace {} --check

format:
	find . -name '*.dhall' -print0 | xargs -0 -n 1 dhall --unicode format --inplace

lint:
	find . -name '*.dhall' -print0 | xargs -0 -n 1 dhall --unicode lint --inplace

check-lint:
	find . -name '*.dhall' -print0 | xargs -0 -n 1 -i dhall --unicode lint --inplace {} --check

run-tests:
	find . -wholename '*/tests/*.dhall' -print0 | xargs -0 -n 1 dhall --file

test: run-tests check-format check-lint

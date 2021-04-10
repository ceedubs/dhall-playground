.PHONY: check-format format run-tests test

build: format

check-format:
	find . -name '*.dhall' -print0 | xargs -0 -n 1 -i dhall --unicode format --inplace {} --check

format:
	find . -name '*.dhall' -print0 | xargs -0 -n 1 dhall --unicode format --inplace

run-tests:
	find . -wholename '*/tests/*.dhall' -print0 | xargs -0 -n 1 dhall --file

test: run-tests check-format

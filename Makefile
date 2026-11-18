.PHONY: test lint format docker setup


test:
	.venv/bin/pytest -q

lint:
	ruff check src tests
	black --check src tests

format:
	ruff check --fix src tests
	black src tests

setup:
	python3.11 -m venv .venv
	.venv/bin/python -m pip install -e ".[dev]"
	.venv/bin/pre-commit install

docker:
	docker build -t ml-template .
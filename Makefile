.PHONY: test lint format docker

test:
	pytest -q

lint:
	ruff check src tests
	black --check src tests

format:
	ruff check --fix src tests
	black src tests

docker:
	docker build -t ml-template .
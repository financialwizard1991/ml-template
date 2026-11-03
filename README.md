# ml-template

Reusable project skeleton for every ML project in my study plan: src layout, pytest, ruff + black via pre-commit, and a Makefile as the single entry point. Each new project starts as a copy of this repo.

## Setup

Requires Python 3.11+.

```bash
git clone https://github.com/financialwizard1991/ml-template.git
cd ml-template
python3.11 -m venv .venv
source .venv/bin/activate
python -m pip install -e ".[dev]"
pre-commit install
```

## Usage

```bash
make test     # run the test suite
make lint     # check style (ruff + black), changes nothing
make format   # auto-fix style
```

## Layout

```
src/ml_template/   package code
tests/             pytest tests
data/              local data, gitignored
notebooks/         exploration only, never imported
```
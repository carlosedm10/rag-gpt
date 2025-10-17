# Simple developer shortcuts for formatting and linting

PYTHON ?= python3

.PHONY: help init-dev format lint

help:
	@echo "Available targets:"
	@echo "  init-dev  - Install Poetry and dev tools (Black)"
	@echo "  format    - Auto-format code with Black via Poetry"
	@echo "  lint      - Check formatting (Black --check) via Poetry"

# Install Poetry and dev tools using Poetry
init-dev:
	$(PYTHON) -m pip install --upgrade pip
	$(PYTHON) -m pip install poetry
	poetry config virtualenvs.in-project true
	poetry install --only dev

# Formatter shortcut: Black auto-format
format:
	poetry run black .

# Lint shortcut: Black check-only (no changes)
lint:
	poetry run black --check .



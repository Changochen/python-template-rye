format:
    rye run ruff format src test

lint:
    rye run ruff lint --fix src test

test:
    rye run pytest

check:
    rye run ruff check src test
    rye run ruff format --check src test

cov:
    rye run coverage run -m pytest
    rye run coverage report
    rye run coverage json
install:
	poetry install

build:
	poetry build

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install --user --force-reinstall dist/*.whl

lint:
	poetry run flake8 gendiff

check:
	poetry run pytest
	poetry run flake8 gendiff

test:
	poetry run pytest

coverage:
	poetry run coverage run -m pytest tests/
	poetry run coverage lcov



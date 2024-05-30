install:
	poetry install

build:
	poetry build

publish:
	poetry publish --dry-run

install:
	python3 -m pip install --user --force-reinstall dist/*.whl

lint:
	poetry run flake8 gendiff

check:
	poetry run pytest
	poetry run flake8 gendiff

test:
	poetry run pytest

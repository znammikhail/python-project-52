MANAGE := poetry run python manage.py

install: .env
	@poetry install

make-migration:
	@$(MANAGE) makemigrations

migrate: make-migration
	@$(MANAGE) migrate

build: install migrate

dev:
	poetry run manage.py runserver

install:
	poetry install

lint:
	poetry run flake8 page_analyzer

start:
	poetry run gunicorn task_manager.wsgi
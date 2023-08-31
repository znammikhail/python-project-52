dev:
	poetry run manage.py runserver

install:
	poetry install

lint:
	poetry run flake8 page_analyzer

start:
	poetry run gunicorn task_manager.wsgi
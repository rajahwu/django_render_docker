#!/bin/bash

set -o errexit

# Apply Django database migrations
poetry run python manage.py migrate
# poetry run python manage.py createsu

# exec gunicorn mysite.wsgi:application --bind 0.0.0.0:8000
poetry run python manage.py runserver

# Start your Django application
exec "$@"
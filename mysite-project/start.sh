#!/bin/bash

set -o errexit

# Apply Django database migrations
poetry run python manage.py migrate
poetry run python manage.py createsu

# Start your Django application
exec "$@"
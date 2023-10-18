#!/bin/bash

set -o errexit

# Apply Django database migrations
poetry run manage.py migrate
poetry run manage.py createsu

# Start your Django application
exec "$@"
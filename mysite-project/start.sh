#!/bin/bash

# Apply Django database migrations
python manage.py migrate
python manage.py createsu

# Start your Django application
exec "$@"
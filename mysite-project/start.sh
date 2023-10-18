#!/bin/bash

# Apply Django database migrations
poerty run manage.py migrate
poerty run manage.py createsu

# Start your Django application
exec "$@"
FROM python:3.8

WORKDIR /app

COPY pyproject.toml poetry.lock /app/
RUN pip install poetry && poetry install

COPY . /app/

EXPOSE 8000
CMD ["./start.sh"]
FROM python:3.10

WORKDIR /app

COPY . /app

# Dependencies required for psycopg2 (used for Postgres client)
RUN apt update -y && apt install -y build-essential libpq-dev

# Dependencies are installed during build time in the container itself so we don't have OS mismatch
RUN pip install -r requirements.txt


EXPOSE 80

CMD ["python", "app.py"]

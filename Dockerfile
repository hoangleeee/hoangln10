FROM python:3.10

WORKDIR /app

COPY . /app

RUN apt update

RUN apt install build-essential libpq-dev -y

RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]

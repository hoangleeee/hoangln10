FROM python:3.10-slim-buster

RUN apt update

RUN apt install build-essential libpq-dev -y

RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements.txt

EXPOSE 5153

CMD ["python", "app.py"]

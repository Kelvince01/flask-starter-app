#Dockerfile 

FROM python:3.9.6

MAINTAINER Kelvince Phillips "kelvince05@gmail.com"

COPY ./requirements.txt /app/requirements.txt

COPY . /app

WORKDIR app

ENV FLASK_APP=run.py

ENV FLASK_ENV=development

RUN pip install -r requirements.txt

EXPOSE 5001:5000

CMD ["flask", "run", "--host", "0.0.0.0"]
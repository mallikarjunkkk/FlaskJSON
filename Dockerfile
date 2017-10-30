FROM ubuntu:latest

MAINTAINER Qpair

RUN apt-get update -y

RUN apt-get install -y python-pip python-dev build-essential

RUN pip install flask-api

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["app.py"]

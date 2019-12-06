FROM python:3.7-alpine

MAINTAINER HuuHa84<huuha84@gmail.com>

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

RUN mkdir /src
WORKDIR /src
COPY ./src /src

RUN adduser -D user
USER user




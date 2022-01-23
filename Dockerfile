#!/bin/sh

FROM python:2.7.18

RUN apt-get update
RUN apt-get install -y default-libmysqlclient-dev


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip && \
    pip install -r requirements.txt
COPY . /app/

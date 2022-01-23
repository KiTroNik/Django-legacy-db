#!/bin/sh

FROM python:2.7.18
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/

RUN apt-get update && \
    apt-get install -y default-libmysqlclient-dev

RUN pip install --upgrade pip && \
    pip install -r requirements.txt
COPY . /app/

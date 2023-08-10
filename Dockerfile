FROM python:3.9-slim-bullseye

COPY src /home/usr/src
COPY requirements.txt /home/usr/src/

# RUN apt-get update
RUN pip install --upgrade pip
RUN pip install -r /home/usr/src/requirements.txt

WORKDIR /home/usr
EXPOSE 8000
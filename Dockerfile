FROM python:3.12

ENV PYTHONUNBUFFERED=1

RUN mkdir -p /src
WORKDIR /src

ADD requirements.txt /src/
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

ADD . /src/

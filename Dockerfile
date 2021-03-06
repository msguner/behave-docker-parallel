FROM python:3.7.4
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 PYTHONUNBUFFERED=1

WORKDIR /opt/testing

RUN groupadd -r celery --gid 1000 && useradd --no-log-init -r -g celery --uid 1000 celery

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

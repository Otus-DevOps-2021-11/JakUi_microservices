FROM python:3.6.0-alpine

WORKDIR /app
ADD . /app

RUN apk --no-cache --update add build-base && pip install --upgrade pip && pip install -r /app/requirements.txt && \
apk del build-base

ENV POST_DATABASE_HOST database_host
ENV POST_DATABASE database_posts

ENTRYPOINT ["python3", "post_app.py"]

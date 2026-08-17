FROM alpine:3

RUN apk add --no-cache py3-pip && \
    python3 -m venv /opt/venv --system-site-packages && \
    /opt/venv/bin/pip3 install --no-cache-dir gdown

ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /data

VOLUME /data
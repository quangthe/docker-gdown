FROM alpine:3

RUN apk add --no-cache py3-pip
RUN python3 -m venv ~/pyvenv --system-site-packages
RUN /root/pyvenv/bin/pip3 install gdown

ENV PATH="$PATH:/root/pyvenv/bin/"

WORKDIR  /data

VOLUME /data
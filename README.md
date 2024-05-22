# docker-gdown

[![ci](https://github.com/quangthe/docker-gdown/actions/workflows/build-docker.yaml/badge.svg)](https://github.com/quangthe/docker-gdown/actions/workflows/build-docker.yaml)
[![Docker Stars](https://img.shields.io/docker/stars/pcloud/gdown.svg?style=flat)](https://hub.docker.com/r/pcloud/gdown/)
[![Docker Pulls](https://img.shields.io/docker/pulls/pcloud/gdown.svg?style=flat)](https://hub.docker.com/r/pcloud/gdown/)


[gdown](https://github.com/wkentaro/gdown) tool on Alpine-based Docker image

Run container
```shell
docker run --rm -it pcloud/gdown
```

Inside container:
```shell
/data # gdown --version
gdown 4.7.3 at /root/pyvenv/lib/python3.11/site-packages
```

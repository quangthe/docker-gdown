# docker-gdown

A minimal, Alpine-based Docker image that packages [gdown](https://github.com/wkentaro/gdown) — the command-line tool for downloading large files and folders from Google Drive — so you can run it anywhere without installing Python or managing dependencies locally.

[![ci](https://github.com/quangthe/docker-gdown/actions/workflows/build-docker.yaml/badge.svg)](https://github.com/quangthe/docker-gdown/actions/workflows/build-docker.yaml)
[![Docker Pulls](https://img.shields.io/docker/pulls/pcloud/gdown.svg?style=flat)](https://hub.docker.com/r/pcloud/gdown/)
[![Docker Stars](https://img.shields.io/docker/stars/pcloud/gdown.svg?style=flat)](https://hub.docker.com/r/pcloud/gdown/)
[![Docker Image Size](https://img.shields.io/docker/image-size/pcloud/gdown/latest?style=flat)](https://hub.docker.com/r/pcloud/gdown/)

## Goal

Downloading from Google Drive on a server, in CI, or inside a container often means wrestling with `curl`/`wget` workarounds for Drive's confirmation tokens and large-file quirks. `gdown` solves that, but still requires a Python environment. **docker-gdown** removes that friction by shipping `gdown` as a ready-to-run, multi-arch container image — pull it and go, no local setup required.

- 🪶 **Lightweight** — built on `alpine:3`, kept as small as possible.
- 🌍 **Multi-arch** — published for `linux/amd64` and `linux/arm64`.
- 🔄 **Always current** — `gdown` is installed unpinned, so every build picks up its latest release; Renovate keeps the Alpine base image and GitHub Actions up to date, and CI rebuilds/republishes on every change.
- 🏷️ **Predictable tags** — `latest` tracks `main`; semver tags (`x.y.z`, `x.y`) are published on release.

## 🐳 DockerHub

The image is published to Docker Hub at **[pcloud/gdown](https://hub.docker.com/r/pcloud/gdown)**.

👉 Browse all available tags: [hub.docker.com/r/pcloud/gdown/tags](https://hub.docker.com/r/pcloud/gdown/tags)

```shell
docker pull pcloud/gdown
```

## Usage

Run an interactive shell in the container:

```shell
docker run --rm -it pcloud/gdown
```

Check that `gdown` is installed:

```shell
/data # gdown --version
gdown 4.7.3 at /root/pyvenv/lib/python3.11/site-packages
```

Download a file directly, mounting the current directory as the working volume:

```shell
docker run --rm -it -v "$(pwd)":/data pcloud/gdown gdown <google-drive-file-id-or-url>
```

## Building locally

```shell
docker build -t docker-gdown .
```

## License

See [LICENSE](LICENSE).

## gunicorn-flask

This repository contains files necessary for building a Docker image of
Gunicorn + Flask.

### Base Docker Image

* [ubuntu:12.04](https://registry.hub.docker.com/_/ubuntu/)

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/shiggins8/gunicorn-flask/) from public [Docker Hub Registry](https://registry.hub.docker.com/):

```bash
docker pull shiggins8/gunicorn-flask
```

### Docker Usage

```bash
docker run --name my-website -d -p 5000:5000 shiggins8/gunicorn-flask
```

After few seconds, open `http://<host>:5000` to see the Flask app.

## gunicorn-flask

This repository contains files necessary for building a Docker image of
Gunicorn + Flask. It comes pre-loaded with a simple Hello World app that will
load if the user doesn't replace the components of the app/ directory.

### Base Docker Image

* [python:slim](https://hub.docker.com/_/python/)

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/shiggins8/gunicorn-flask/) from public [Docker Hub Registry](https://registry.hub.docker.com/):

```bash
docker pull shiggins8/gunicorn-flask
```

### Docker Usage

```bash
docker run --name mysite -d -p 5000:5000 shiggins8/gunicorn-flask
```

After few seconds, open `http://<host>:5000` to see the Flask app.

### Advanced Usage

1. Clone or download this repository to your local machine

2. Replace the app/ directory with your flask application

3. Check the Dockerfile to make sure that the parameters for gunicorn still match up with your new Flask configuration

4. Build and run


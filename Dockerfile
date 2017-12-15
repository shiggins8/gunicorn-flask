# gunicorn-flask

FROM python:slim
MAINTAINER Scott Higgins <scott.higgins@gatech.edu>

# Setup flask application
RUN mkdir -p /deploy/app
COPY gunicorn_config.py /deploy/gunicorn_config.py
COPY requirements.txt /deploy/requirements.txt
RUN pip install --no-cache-dir -r /deploy/requirements.txt
COPY ./app /deploy/app
WORKDIR /deploy/app

EXPOSE 5000

# Start gunicorn
CMD ["/usr/local/bin/gunicorn", "--config", "/deploy/gunicorn_config.py", "hello:app"]

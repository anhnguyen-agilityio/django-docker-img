FROM python:3.5.3-alpine

ENV PYTHONUNBUFFERED 1

# Set up
RUN apk update
RUN apk upgrade
RUN apk add --update build-base postgresql-dev git
RUN apk add build-base python-dev py-pip jpeg-dev zlib-dev libffi-dev openssh-client
ENV LIBRARY_PATH=/lib:/usr/lib

# Install packages
ADD requirements /usr/local/src/requirements
WORKDIR /usr/local/src/requirements

RUN pip install --upgrade pip setuptools
RUN pip install -r all.txt

# Clean
RUN apk del -r git


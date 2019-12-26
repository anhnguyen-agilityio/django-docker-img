#!/usr/bin/env bash

BRANCH=$(git branch | grep \* | cut -d ' ' -f2)

docker build --no-cache . -t anhnguyenkim/docker-img-django:${BRANCH}

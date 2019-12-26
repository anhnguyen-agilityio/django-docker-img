#!/usr/bin/env bash

BRANCH=$(git branch | grep \* | cut -d ' ' -f2)

docker build --no-cache . -t concourseglobal/docker-img-django:${BRANCH}

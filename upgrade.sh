#!/bin/bash -e

docker container run -it --rm -v "$PWD":/opt feather_dev:latest
docker-compose up -d --build

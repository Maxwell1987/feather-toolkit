#!/bin/bash -xe

docker container run -it --rm -v $PWD:/opt feather_dev:latest

docker-compose build
docker-compose up -d

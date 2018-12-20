#!/bin/bash -xe

docker container run -it --rm -v $PWD:/opt feather_dev:latest

cp ./feather/build/feather feather_run/

docker-compose build
docker-compose up -d

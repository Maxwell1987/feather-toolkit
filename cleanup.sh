#!/bin/bash -xe

docker-compose stop
docker-compose rm
rm -rf db-volume

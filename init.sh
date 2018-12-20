#!/bin/bash -xe

docker image build --pull --tag feather_dev:latest feather_dev
docker image build --pull --tag feather_base:latest feather_base
docker image pull mariadb:latest
git clone https://github.com/qicosmos/feather

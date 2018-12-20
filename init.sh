#!/bin/bash -xe

docker image build --tag feather_dev:latest feather_dev
docker image build --tag feather_run:latest feather_base
git clone https://github.com/qicosmos/feather

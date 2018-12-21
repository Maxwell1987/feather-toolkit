@echo off

docker image build --pull --tag feather_dev:latest feather_dev
docker image build --pull --tag feather_base:latest feather_base
docker image pull mariadb:latest
docker container run -it --rm -v "%~dp0":/opt feather_dev:latest init

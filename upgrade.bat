@echo off

docker container run -it --rm -v "%~dp0":/opt feather_dev:latest

docker-compose build
docker-compose up -d

@echo off

docker container run -it --rm -v "%~dp0":/opt feather_dev:latest
docker-compose up -d --build

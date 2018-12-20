@echo off

docker-compose stop
docker-compose rm
del /a /f /q db-volume

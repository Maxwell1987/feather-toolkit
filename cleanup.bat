@echo off

docker-compose down -v --rmi local
docker image rm feather_base feather_dev

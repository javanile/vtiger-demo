#!/bin/bash
set -e

docker-compose down -v > /dev/null
docker-compose pull vtiger
docker-compose up -d

docker-compose ps

git add . > /dev/null
git commit -am "$*"
git push

#!/bin/bash
set -e

docker-compose down -v > /dev/null
docker-compose pull vtiger
docker-compose up -d

git add . > /dev/null
git commit -am "$*"
git push

echo ""
docker-compose ps

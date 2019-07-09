#!/bin/bash

docker rm -f `docker ps -aq -f name=myproject_*`
set -a
source .env
cat ${COMPOSE_CONFIG} | envsubst | docker-compose -f - -p "jupyter-notebook" up -d
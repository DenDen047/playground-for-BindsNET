#!/bin/bash

CURRENT_PATH=$(pwd)

cd docker && \
docker-compose up -d --build && \
docker-compose ps && \
docker exec -it app /bin/bash
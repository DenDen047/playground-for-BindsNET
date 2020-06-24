#!/bin/bash

CURRENT_PATH=$(pwd)
IMAGE_NAME="denden047/bindsnet_env:latest"

docker build -t ${IMAGE_NAME} ./docker && \
docker run -it --rm \
    --gpus '"device=0"' \
    -v ${CURRENT_PATH}/src/:/src/ \
    -v ${CURRENT_PATH}/data/:/data/ \
    -v ${CURRENT_PATH}/configs/:/configs/ \
    -w /src \
    ${IMAGE_NAME}
#!/bin/bash

docker_image_name="atcoder_learning"

DOCKER_BUILDKIT=1 docker build -t $docker_image_name -f docker/Dockerfile \
    --build-arg UID=$(id -u) \
    --build-arg GID=$(id -g) \
    .

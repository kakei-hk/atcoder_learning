#!/bin/bash

docker_image_name="atcoder_learning"
docker_container_name="atcoder_learning"
workdir="/workspace"

docker run --rm \
    --name ${docker_container_name} \
    -v ${PWD}:${workdir} \
    -it ${docker_image_name} \
    /bin/bash

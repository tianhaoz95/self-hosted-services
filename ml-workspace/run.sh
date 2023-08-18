#!/bin/sh
docker run -d \
    -p 8180:8080 \
    --name "ml-workspace" \
    -v "${PWD}/data:/workspace" \
    --env AUTHENTICATE_VIA_JUPYTER="boheji" \
    --shm-size 4G \
    --restart always \
    mltooling/ml-workspace:0.13.2
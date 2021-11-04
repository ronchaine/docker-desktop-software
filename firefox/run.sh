#!/bin/sh
export DISPLAY=${DISPLAY:-:0}

docker run --rm --name burning_animal \
    -v /dev/dri:/dev/dri \
    -v /tmp:/tmp \
    -v /dev/shm:/dev/shm \
    -v /etc/machine-id:/etc/machine-id \
    -v /container-data/mozilla:/home/firefox-user/.mozilla \
    -v ${XDG_RUNTIME_DIR}:/run/user/1000 \
    --privileged=true \
    --network host \
    -e DISPLAY=${DISPLAY} \
    fftest1

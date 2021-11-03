#!/bin/sh
export DISPLAY=${DISPLAY:-:0}

docker run --rm --name steamboat_willie \
    -v /dev:/dev \
    -v /tmp:/tmp \
    -v /etc/machine-id:/etc/machine-id \
    -v /container-data/steam/steam:/home/steam/.steam \
    -v /container-data/steam/share:/home/steam/.local/share/Steam \
    -v ${XDG_RUNTIME_DIR}:${XDG_RUNTIME_DIR} \
    --privileged=true \
    --network host \
    -e DISPLAY=${DISPLAY} \
    corax-steam

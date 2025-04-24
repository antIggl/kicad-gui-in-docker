#!/bin/bash
vuser=user
docker run -it --rm -v ${HOME}:/home/${vuser} \
                -e DISPLAY=$DISPLAY \
                -v /tmp/.X11-unix:/tmp/.X11-unix \
                kicad-gui

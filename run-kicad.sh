#!/bin/bash
vuser=user
docker run -it --rm -v ${HOME}:/home/${vuser} \
                -e DISPLAY=$DISPLAY \
                -v /tmp/.X11-unix:/tmp/.X11-unix \
                -v $HOME/.Xauthority:/root/.Xauthority \
                -v $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY:/tmp/$WAYLAND_DISPLAY \
                  kicad-gui

#!/bin/sh
docker build -t builder-dmenu .
docker run --rm -ti -v "$HOME/.local:/host/local" -v "$(pwd):/host/src" -w /host/src -u "$UID:$GROUPS" builder-dmenu

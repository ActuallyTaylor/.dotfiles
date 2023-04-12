#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

if [ "$SELECTED" == "true" ]; then
    sketchybar --set $NAME background.color=0x44ffffff
else
    sketchybar --set $NAME background.color=0x502a2d3d \
                           blur_radius=30
fi

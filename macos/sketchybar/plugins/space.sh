#!/bin/sh

source "$CONFIG_DIR/settings.sh"

if [ "$SELECTED" == "true" ]; then
    sketchybar --set $NAME background.color=$HIGHLIGHT_COLOR
else
    sketchybar --set $NAME background.color=$BACKGROUND_COLOR \
                           blur_radius=$BLUR_RADIUS
fi

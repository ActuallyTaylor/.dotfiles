sketchybar --add item   volume  right                             \
           --set volume         script="$PLUGIN_DIR/volume.sh"        \
                                background.color=$BACKGROUND_COLOR \
                                icon.padding_left=10 \
                                label.padding_right=10 \
                                blur_radius=$BLUR_RADIUS \
           --subscribe volume volume_change
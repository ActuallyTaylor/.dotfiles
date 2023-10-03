sketchybar --add item   wifi    right                               \
           --set wifi           script="$PLUGIN_DIR/wifi.sh"          \
                                icon=􀙇                               \
                                background.color=$BACKGROUND_COLOR \
                                icon.padding_left=10 \
                                label.padding_right=10 \
                                blur_radius=$BLUR_RADIUS \
           --subscribe wifi wifi_change
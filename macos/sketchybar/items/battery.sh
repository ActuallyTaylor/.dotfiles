sketchybar --add item battery right                            \
           --set battery script="$PLUGIN_DIR/battery.sh"       \
                         update_freq=120                       \
                         background.color=$BACKGROUND_COLOR \
                         icon.padding_left=10 \
                         label.padding_right=10 \
                         blur_radius=$BLUR_RADIUS \
           --subscribe battery system_woke power_source_change \
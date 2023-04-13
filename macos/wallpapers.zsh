#!/bin/zsh

appearance=$(defaults read -g AppleInterfaceStyle)
WALLPAPER=""

if [[ $appearance != 'Dark' ]]; then
    echo "Light Mode"
    WALLPAPER="~/.dotfiles/wallpapers/girl_smiling.jpg"   
    #echo -e "\033]50;SetProfile=Light\a" 
else
    echo "Dark Mode"
    WALLPAPER="~/.dotfiles/wallpapers/girl_standing.png"
    #echo -e "\033]50;SetProfile=Light\a"
fi

for x in 1 2 3 4 5 6 7 8 9 0; do \ 
    yabai -m space --focus $x
    osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"${WALLPAPER}\"";
done;


echo "Updating..."
yabai -m space --focus 1
brew services stop sketchybar
brew services start sketchybar
echo "Done Updating!"

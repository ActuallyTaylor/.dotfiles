#!/bin/bash

if [ ! -L ~/.config/zed ]; then
  echo "Creating symlink for zed"
  ln -s ~/.dotfiles/zed/ ~/.config
else
  echo "Zed symlink already exists"
fi

if [ ! -L ~/.oh-my-zsh/custom/themes/tay.zsh-theme ]; then
  echo "Creating symlink for oh my zsh theme"
  ln -s ~/.dotfiles/tay.zsh-theme ~/.oh-my-zsh/custom/themes
else
  echo "zsh Theme symlink already exists"
fi

if [ ! -L ~/.config/karabiner/karabiner.json ]; then
  echo "Creating symlink for karabiner settings"
  ln -s ~/.dotfiles/karabiner.json ~/.config/karabiner/karabiner.json
else
  echo "Karabiner symlink already exists"
fi

if [ ! -L ~/.config/helix/config.toml ]; then
  echo "Creating symlink for helix settings"
  ln -s ~/.dotfiles/helix/config.toml ~/.config/helix/config.toml
else
  echo "Helix config symlink already exists"
fi

#!/bin/bash

if [ ! -L ~/.config/nvim ] ; then
    echo "Creating symlink for nvim"
    ln -s ~/.dotfiles/nvim/ ~/.config
else
    echo "Nvim symlink already exists"
fi


if [ ! -L ~/.config/zed ]; then
  echo "Creating symlink for zed"
  ln -s ~/.dotfiles/zed/ ~/.config
else
  echo "Zed symlink already exists"
fi

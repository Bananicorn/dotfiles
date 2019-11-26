#!/bin/bash
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.fishrc ~/.fishrc
ln -s ~/dotfiles/.xinitrc ~/.xinitrc
./setup-vim.sh

mkdir -p ~/.config
mkdir -p ~/.config/i3
ln -s ~/dotfiles/i3_config ~/.config/i3/config

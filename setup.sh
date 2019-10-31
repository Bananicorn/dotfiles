#!/bin/bash
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.fishrc ~/.fishrc
ln -s ~/dotfiles/.xinitrc ~/.xinitrc
./setup-vim.sh

#change this to a symbolic link too once brain works again
mkdir -p ~/.config
mkdir -p ~/.config/i3
cp -r ~/dotfiles/i3 ~/.config/i3/config

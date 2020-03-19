#!/bin/bash
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.fishrc ~/.fishrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.xinitrc ~/.xinitrc
ln -s ~/dotfiles/.gitignore ~/.gitignore
./setup-vim.sh

mkdir -p ~/.config
mkdir -p ~/.config/i3
ln -s ~/dotfiles/i3_config ~/.config/i3/config

#if git is installed
git config --global core.excludesfile '~/.gitignore'

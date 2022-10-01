#!/bin/bash

#the bare essentials
apt install -y vim
~/dotfiles/setup-vim.sh
apt install -y git

#window manager
apt install -y sway
apt install -y swaybg
mkdir -p .config/sway
ln -s ~/dotfiles/devuan_setup/config/sway/config ~/.config/sway/config
rm -rf ~/.profile
ln -s ~/dotfiles/devuan_setup/.profile ~/.profile

#let there be sound!
apt install -y alsa-utils

#launcher
apt install -y wofi
mkdir -p .config/wofi
ln -s ~/dotfiles/devuan_setup/config/wofi/style.css ~/.config/wofi/style.css

#wifi and bluetooth
apt install -y connman-gtk

#automount external drives
apt install -y udiskie

#actual programs
apt install -y firefox-esr
apt install -y inkscape
apt install -y flameshot
apt install -y thunar
apt remove -y thunar-volman

apt install -y docker
apt install -y docker-compose

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
ln -s ~/dotfiles/devuan_setup/config/user-dirs.dirs ~/.config/

#image viewer
apt install -y imv

#let there be sound (over bluetooth too)!
apt install -y pulseaudio
apt install -y pulseaudio-module-bluetooth
apt install -y pulsemixer
apt install -y bluez
apt install -y bluez-firmware
apt install -y bluez-tools

#screen brightness control
apt install -y brightnessctl

#displays "progress" bars - used for brightness and volume
apt install -y wob

#launcher
apt install -y wofi
mkdir -p .config/wofi
ln -s ~/dotfiles/devuan_setup/config/wofi/style.css ~/.config/wofi/style.css
ln -s ~/dotfiles/devuan_setup/config/wofi/config ~/.config/wofi/config
#wofi will search for desktop files in here
mkdir -p ~/.local/share/applications

#wifi and bluetooth
apt install -y connman-gtk

#automount external drives
apt install -y udiskie

#clipboard manager
apt install -y clipman

#love2d stuff
apt install -y love
apt install -y apktool

#actual programs
apt install -y zsh
apt install -y firefox-esr
apt install -y inkscape
apt install -y flameshot
apt install -y thunar
apt remove -y thunar-volman

#work stuff
apt install -y git-flow
apt install -y docker.io
apt install -y docker-compose
apt install -y npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
DOCKER_COMPOSE_VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
DOCKER_COMPOSE_PATH=/usr/local/bin/docker-compose
curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64 -o $DOCKER_COMPOSE_PATH
chmod 755 $DOCKER_COMPOSE_PATH

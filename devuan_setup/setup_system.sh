#!/bin/bash

#the bare essentials
sudo apt install -y vim
~/dotfiles/setup-vim.sh
sudo apt install -y git
cp ./scripts/vimv /usr/bin

#window manager
sudo apt install -y sway
sudo apt install -y swaybg
mkdir -p .config/sway
ln -s ~/dotfiles/devuan_setup/config/sway/config ~/.config/sway/config
rm -rf ~/.profile
ln -s ~/dotfiles/devuan_setup/.profile ~/.profile
ln -s ~/dotfiles/devuan_setup/config/user-dirs.dirs ~/.config/

#install terminal emulator
sudo apt install -y foot
ln -s ~/dotfiles/devuan_setup/config/foot ~/.config/foot

#dialog boxes
sudo apt install -y zenity

#image viewer
sudo apt install -y imv

#let there be sound (over bluetooth too)!
sudo apt install -y pulseaudio
sudo apt install -y pulseaudio-module-bluetooth
sudo apt install -y pulsemixer
sudo apt install -y bluez
sudo apt install -y bluez-firmware
sudo apt install -y bluez-tools

#screen brightness control
sudo apt install -y brightnessctl

#battery measurement
sudo apt install -y acpi
sudo apt install -y acpid

#displays "progress" bars - used for brightness and volume
sudo apt install -y wob

#launcher
sudo apt install -y wofi
mkdir -p .config/wofi
ln -s ~/dotfiles/devuan_setup/config/wofi/style.css ~/.config/wofi/style.css
ln -s ~/dotfiles/devuan_setup/config/wofi/config ~/.config/wofi/config
#wofi will search for desktop files in here
mkdir -p ~/.local/share/applications

#wifi and bluetooth
sudo apt install -y connman-gtk

#automount external drives
sudo apt install -y udiskie

#love2d stuff
sudo apt install -y love
sudo apt install -y apktool

#actual programs
sudo apt install -y zsh
sudo apt install -y firefox-esr
sudo apt install -y inkscape
sudo apt install -y grimshot
sudo apt install -y thunar
sudo apt remove -y thunar-volman

#work stuff
sudo apt install -y git-flow
sudo apt install -y docker.io
sudo apt install -y docker-compose
sudo apt install -y npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
DOCKER_COMPOSE_VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
DOCKER_COMPOSE_PATH=/usr/local/bin/docker-compose
curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64 -o $DOCKER_COMPOSE_PATH
chmod 755 $DOCKER_COMPOSE_PATH
#flatpak install flathub org.freedesktop.Platform/x86_64/19.08

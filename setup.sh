#!/bin/bash
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .fishrc ~/.fishrc
cp .xinitrc ~/.xinitrc
./setup-vim.sh
mkdir -p ~/.config
mkdir -p ~/.config/i3
cp -r i3 ~/.config/i3/config

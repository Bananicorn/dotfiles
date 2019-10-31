#!/bin/bash
ln -s ~/dotfiles/.vimrc ~/.vimrc
mkdir ~/.vim
mkdir ~/.vim/plugin
mkdir ~/.vim/undofiles
mkdir ~/.vim/swapfiles
mkdir ~/.vim/sessions

#install all the plugins
cd ~/.vim/plugin
git clone "https://github.com/scrooloose/nerdcommenter"
git clone "https://github.com/wesQ3/vim-windowswap"
git clone "https://github.com/editorconfig/editorconfig-vim"

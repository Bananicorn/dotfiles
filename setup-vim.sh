#!/bin/bash
ln -s ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.vim/plugin
mkdir ~/.vim/undofiles
mkdir ~/.vim/swapfiles
mkdir ~/.vim/sessions

ln -s ~/dotfiles/vim/ftplugin ~/.vim/

#install all the plugins
cd ~/.vim/plugin
git clone "https://github.com/scrooloose/nerdcommenter"
git clone "https://github.com/wesQ3/vim-windowswap"
git clone "https://github.com/editorconfig/editorconfig-vim"

#Plugin for language-server protocol and linting
#mkdir -p ~/.vim/pack/git-plugins/start
#git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

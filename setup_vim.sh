#!/bin/bash

sudo apt install -y vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/Vivek-anand-jain/myscripts/master/vimrc
mv vimrc ~/.vimrc
vim +PluginInstall +qall

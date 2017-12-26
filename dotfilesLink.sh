#!/bin/bash
#install vim git etc...

set -e
set -x

sudo apt-get update
sudo apt-get install -y git vim-gnome curl

#install neobundle
#curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
#sh ./install.sh
#rm ./install.sh

ln -s ~/dotfiles/.vimrc ~/.vimrc


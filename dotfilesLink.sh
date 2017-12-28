#!/bin/bash
#install vim git etc...

set -e
set -x

sudo apt-get update
sudo apt-get install -y git vim-gnome curl

# git config setting
git config --global user.email "17.punch@gmail.com"
git config --global user.name "dashimaki360"

#install neobundle
#curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
#sh ./install.sh
#rm ./install.sh

ln -s ~/dotfiles/.vimrc ~/.vimrc


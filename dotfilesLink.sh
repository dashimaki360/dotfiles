#!/bin/bash
#install vim git etc...

set -e
set -x

sudo -E apt-get update
sudo -E apt-get install -y git vim-gnome curl

# git config setting
git config --global user.email "17.punch@gmail.com"
git config --global user.name "dashimaki360"

#install neobundle
#curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
#sh ./install.sh
#rm ./install.sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ -e ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.bac
fi
ln -s ~/dotfiles/.vimrc ~/.vimrc
if [ -e ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc.bac
fi
ln -s ~/dotfiles/.bashrc ~/.bashrc


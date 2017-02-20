#! /bin/bash
#install vim git etc...
sudo apt-get install git vim-gnome bash-conpletion curl

#install neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm ./install.sh

ln -s ~/dotfiles/.vimrc ~/.vimrc


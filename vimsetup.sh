#!/bin/bash

# Set symbolic links to vim dotfiles
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.viminfo ~/.viminfo

# Install Vundle handled plugins
vim +PluginInstall +qall

#!/bin/bash

# Run script from home directory
cd ~

# Set symbolic links to vim dotfiles
if [ -L .vim ]; then
    # remove existing symlink to .vim to avoid recursive linking
    rm .vim
fi
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc

# Install Vundle handled plugins
vim +PluginInstall +qall

# Restore directory
cd -

#!/bin/bash

# First set up Vundle:
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Run script from home directory
cd ~

# Set symbolic links to vim dotfiles
if [ -L .vim ]; then
    # remove existing symlink to .vim to avoid recursive linking
    rm .vim
fi
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc

# Install Vundle handled plugins using vim-fugitive 
vim +BundleInstall +qall

# Restore directory
cd -

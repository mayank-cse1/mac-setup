#! /bin/bash

DOTFILES=(.bash_profile .gitconfig .gitignore)

#Remove old dotfiles and replace them
for dotfile in $(echo ${DOTFILES[*]});
do
    rm ~/$(echo $dotfile)
    ln -s ~/mac-setup/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done

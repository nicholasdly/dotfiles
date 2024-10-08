#! /bin/bash

# Run this script to install all dotfiles below.
DOTFILES=(.gitconfig .gitignore .zshrc)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ~/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done

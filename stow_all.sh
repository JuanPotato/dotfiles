#!/usr/bin/sh

# Script to stow all the dotfiles. Set -x so I can see what I got

set -x

for dir in */; do
    stow "${dir:0:-1}"
done

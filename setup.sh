#!/bin/sh

sudo pacman -S xorg xorg-xinit
sudo pacman -S awesome zsh zsh-completions
sudo pacman -S ttf-dejavu rofi kitty neovim

if [ ! -f ~/.xinitrc ]; then
    touch ~/.xinitrc
fi
if [ ! -f ~/.zprofile ]; then
    touch ~/.zprofile
fi

echo "exec awesome" >> ~/.xinitrc
echo "startx" >> ~/.zprofile

echo
echo "######################"
echo " SET NEW SHELL TO ZSH "
echo "######################"
echo
chsh $USER

echo "Done"

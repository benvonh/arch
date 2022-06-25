#!/bin/sh

sudo pacman -S xorg xorg-xinit
sudo pacman -S awesome zsh zsh-completions
sudo pacman -S ttf-dejavu rofi kitty xterm neovim

if [ ! -f ~/.xinitrc ]; then
    touch ~/.xinitrc
fi
if [ ! -f ~/.zprofile ]; then
    touch ~/.zprofile
fi

if ! cat ~/.xinitrc | grep 'exec'; then
    echo "exec awesome" >> ~/.xinitrc
fi
if ! cat ~/.zprofile | grep 'startx'; then
    echo "startx" >> ~/.zprofile
fi

echo
echo "######################"
echo " SET NEW SHELL TO ZSH "
echo "######################"
echo
chsh $USER

echo "Done"

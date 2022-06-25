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

if ! cat ~/.xinitrc | grep 'exec'; then
    echo "exec awesome" >> ~/.xinitrc
fi
if ! cat ~/.zprofile | grep 'startx'; then
    echo "startx" >> ~/.zprofile
fi

mkdir -p ~/.config/awesome
cp /etc/xdg/awesome/rc.lua ~/.config/awesome/rc.lua
sed -i 's/xterm/kitty/g' ~/.config/awesome/rc.lua

echo
echo "######################"
echo " SET NEW SHELL TO ZSH "
echo "######################"
echo
chsh $USER

echo "Done"

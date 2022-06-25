#!/bin/sh

sudo pacman -S --needed git base-devl

if [ -d ~/repos/yay ]; then
    rm -rf ~/repos/yay
else
    mkdir -p ~/repos
fi

git clone https://aur.archlinux.org/yay ~/repos/yay
cd yay
makepkg -si

yay -S catppuccin-gtk-theme insync ly

#!/bin/sh

sudo pacman -S --needed git base-devl
mkdir -p ~/repos
git clone https://aur.archlinux.org/yay ~/repos/yay
cd yay
makepkg -si

yay -S catppuccin-gtk-theme insync ly

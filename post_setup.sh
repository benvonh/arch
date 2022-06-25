#!/bin/sh

sudo pacman -S --needed git base-devel

if [ -d ~/repos/yay ]; then
    rm -rf ~/repos/yay
else
    mkdir -p ~/repos
fi

git clone https://aur.archlinux.org/yay ~/repos/yay
cd ~/repos/yay
makepkg -si

yay -S catppuccin-gtk-theme brave insync

echo
echo "#############################"
echo " RUN INSYNC TO SYNC DOTFILES "
echo "#############################"
echo
echo "Done"

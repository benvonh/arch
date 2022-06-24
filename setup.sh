#!/bin/sh

# Install YAY
mkdir -p ~/repos
git clone https://aur.archlinux.org/yay ~/repos
cd ~/repos/yay
makepkg -si

# Install packages
yay -S xorg xorg-xinit awesome ttf-dejavu rofi kitty brave neovim insync

# Finish
echo
echo 'Installation complete!'
echo '----------------------'
echo 'The system will reboot now.'
echo 'After logging back in:'
echo
echo '    1) Run `insync start`'
echo '    2) Run `./link.sh`'
echo
echo "Hint: Sync folders to $HOME/insync/"
sleep 10
sudo reboot

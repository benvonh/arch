```SH
mkdir -p $HOME/repos
git clone https://aur.archlinux.org/yay $HOME/repos/yay
cd $HOME/repos/yay
makepkg -si
yay -S xorg xorg-xinit awesome ttf-dejavu kitty brave neovim feh 
```

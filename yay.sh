#!/bin/bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Syu --sudoloop --noconfirm
yay -S vim --sudoloop --noconfirm
yay -S google-chrome --sudoloop --noconfirm
yay -S gnome-weaks --sudoloop --noconfirm

yay -S zsh  --sudoloop --noconfirm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

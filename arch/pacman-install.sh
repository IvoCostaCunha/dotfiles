#! bin/bash
echo "[Copy of .config files and .bashrc]"
cp .zshrc ~/
cp -R ../alacritty ../neofetch ../tmux i3 i3status picom rofi ~/.config

echo "[Installing pacman packages]"
pacman -S ${cat pacman-packages}

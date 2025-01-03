#! /bin/bash
# To be tested, not to be used yet !

# check if the script is run as sudo
# 0 is either root or sudo
if ["$EUID" -ne 0]
  then "[!Must be run with sudo!]"
  exit
fi

# zsh
echo "[Copying .zshrc]"
cp .zshrc ~/.zshrc

# .config folders
echo "[Copying configurations to .config]"
cp ../nvim ../kitty ../neofetch ~/.config

# Homebrew
echo "[Homebrew installation]"
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
echo "[Installing Homebrew packages]"
for p in $(cat brew-leaves); do
  brew install "$p"
done

# git
echo "[Git configuration]"
git config --global user.name "Ivo Costa Cunha"
git config --global user.email "ivo.costacunha@icloud.com"
git config --global commit.gpgsign true
git config --global core.editor "nvim"~


# Host name
echo "[Hostname configuration]"
scutil --set HostName macbook
scutil --set LocalHostName macbook.local
scutil --set ComputerName macbook-pro
dscacheutil -flushcachescutil

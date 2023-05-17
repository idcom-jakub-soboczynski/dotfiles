#!/bin/bash

# Logowanie do Docker Hub
if ! [ "$(docker info | grep -i username)" ]; then
  read -p "DockerHub Password: " DOCKER_HUB_PASSWORD
  docker login -u idcomgroup -p "$DOCKER_HUB_PASSWORD"
fi

# Dodanie klucza SSH do Githuba
open https://github.com/settings/ssh/new
read -p "Press enter to continue..."

# Instalacja Dotfiles
if ! [ -d "$HOME/.dotfiles" ]; then
  git clone --bare git@github.com:idcom-jakub-soboczynski/dotfiles.git $HOME/.dotfiles
  alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  dotfiles config --local status.showUntrackedFiles no
  dotfiles checkout --force
  source ~/.zshrc
  echo -e "\n\n🔥 dotfiles installed 🔥"
  echo -e "------------------------\n\n"
fi

# Konfiguracja katalogu IDcom i funkcji IDcom
if ! [ -x "$(command -v idcom)" ]; then
  mkdir -p ~/IDcom/DEVELOP && cd ~/IDcom/DEVELOP
  git clone git@github.com:IDcomGroup/pl.idcom.develop.config.git
  chmod +x ~/IDcom/DEVELOP/pl.idcom.develop.config/bin/idcom
fi

# Konfiguracja repozytoriów IDcom
idcom git clone
idcom db init
idcom docker up

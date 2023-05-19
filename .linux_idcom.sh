#!/bin/bash

# Logowanie do Docker Hub
if ! [ "$(docker info | grep -i username)" ]; then
  read -p "DockerHub Login: " DOCKER_HUB_LOGIN
  read -p "DockerHub Password: " DOCKER_HUB_PASSWORD
  docker login -u "$DOCKER_HUB_LOGIN" -p "$DOCKER_HUB_PASSWORD"
fi

# Dodanie klucza SSH do Githuba
echo
echo
read -p "Do you want to add SSH Key to Github? (Y/n): " WANT_ADD_SSH_TO_GITHUB
if [[ -z $WANT_ADD_SSH_TO_GITHUB || $WANT_ADD_SSH_TO_GITHUB == "y" || $WANT_ADD_SSH_TO_GITHUB == "Y" ]]; then
  open https://github.com/settings/ssh/new
  sleep 5
  read -p "Press enter to continue..."
  echo -e "\n\n🔥 SSH Key added 🔥"
  echo -e "------------------------\n\n"
fi

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
if [ -x "$(command -v idcom)" ]; then
  if [ "$(idcom git ls | grep -i 'Nie Sklonowany')" ]; then
    idcom git clone
  fi

  idcom db init

  if ! [ "$(docker ps | grep -i idcom)" ]; then
    idcom docker up
  fi
fi

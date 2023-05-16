#!/bin/bash

# Aktualizacja systemu
sudo apt update -y && sudo apt upgrade -y
echo -e "\n\nSystem updated 🔥\n\n"

# Instalacja curl i wget
if ! [ -x "$(command -v curl)" ]; then
  sudo apt install curl -y
  echo -e "\n\nCurl installed 🔥\n\n"
fi

if ! [ -x "$(command -v wget)" ]; then
  sudo apt install wget -y
  echo -e "\n\nWget installed 🔥\n\n"
fi

# Instalacja systemu kontroli wersji Git
if ! [ -x "$(command -v git)" ]; then
  sudo apt install git -y
  curl -L https://raw.githubusercontent.com/kamranahmedse/git-standup/master/installer.sh | sudo sh
  echo -e "\n\nGit installed 🔥\n\n"
fi

# Instalacja menadżera pakietów snap
if ! [ -x "$(command -v snap)" ]; then
  sudo mv /etc/apt/preferences.d/nosnap.pref ~/nosnap.backup
  sudo apt update -y
  sudo apt install snapd -y
  echo -e "\n\nSnapd installed 🔥\n\n"
fi

# Instalacja menadżera pakietów flatpak
if ! [ -x "$(command -v flatpak)" ]; then
  sudo apt install flatpak -y
  echo -e "\n\nFlatpak installed 🔥\n\n"
fi

# Instalacja Dropbox
if ! [ -x "$(command -v dropbox)" ]; then
  sudo apt install dropbox -y
  echo -e "\n\nDropbox installed 🔥\n\n"
fi

# Instalacja KeePassXC
if ! [ -x "$(command -v keepassxc)" ]; then
  sudo snap install keepassxc
  echo -e "\n\nKeepassXC installed 🔥\n\n"
fi

# Instalacja Slack
if ! [ -x "$(command -v slack)" ]; then
  sudo snap install slack
  echo -e "\n\nSlack installed 🔥\n\n"
fi

# Instalacja AutoKey
if ! [ -x "$(command -v autokey)" ]; then
  sudo apt install autokey-gtk -y
  echo -e "\n\nAutokey installed 🔥\n\n"
fi

# Instalacja managera pakietów Python3 pip
if ! [ -x "$(command -v pip3)" ]; then
  sudo apt-get install python3-pip -y
  echo -e "\n\nPip3 installed 🔥\n\n"
fi

# Instalacja Google Chrome
if ! [ -x "$(command -v google-chrome-stable)" ]; then
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
  sudo apt update -y
  sudo apt install google-chrome-stable -y
  echo -e "\n\nGoogle Chrome installed 🔥\n\n"
fi

# Instalacja Gimp
if ! [ -x "$(command -v gimp)" ]; then
  sudo apt install gimp -y
  echo -e "\n\nGimp installed 🔥\n\n"
fi

# Instalacja Htop
if ! [ -x "$(command -v htop)" ]; then
  sudo apt install htop -y
  echo -e "\n\nHtop installed 🔥\n\n"
fi

# Instalacja Inkscape
if ! [ -x "$(command -v inkscape)" ]; then
  sudo snap install inkscape
  echo -e "\n\nInkscape installed 🔥\n\n"
fi

# Instalacja Emote
if ! [ -x "$(command -v emote)" ]; then
  sudo snap install emote
  echo -e "\n\nEmote installed 🔥\n\n"
fi

# Instalacja Insomnia
if ! [ -x "$(command -v insomnia)" ]; then
  sudo snap install insomnia
  echo -e "\n\nInsomnia installed 🔥\n\n"
fi

# Instalacja Midnight Commander
if ! [ -x "$(command -v mc)" ]; then
  sudo apt install mc -y
  echo -e "\n\nMidnight Commander installed 🔥\n\n"
fi

# Instalacja ULauncher
if ! [ -x "$(command -v ulauncher)" ]; then
  sudo add-apt-repository ppa:agornostal/ulauncher
  sudo apt update
  sudo apt install ulauncher -y
  echo -e "\n\nUlauncher installed 🔥\n\n"
fi

# Instalacja Solaar (Logitech Unifying Receiver Software)
if ! [ -x "$(command -v solaar)" ]; then
  sudo add-apt-repository ppa:daniel.pavel/solaar
  sudo apt-get update
  sudo apt-get install solaar -y
  echo -e "\n\nSolaar installed 🔥\n\n"
fi

# Instalacja Vim
if ! [ -x "$(command -v vim)" ]; then
  sudo apt install vim -y
  echo -e "\n\nVim installed 🔥\n\n"
fi

# Instalacja Visual Studio Code
if ! [ -x "$(command -v code)" ]; then
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
  sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  sudo apt-get install apt-transport-https -y
  sudo apt-get update -y
  sudo apt-get install code -y
  echo -e "\n\nCode installed 🔥\n\n"
fi

# Instalacja XClip (clipboard manager in terminal)
if ! [ -x "$(command -v xclip)" ]; then
  sudo apt-get install xclip -y
  echo -e "\n\nXClip installed 🔥\n\n"
fi

# Instalacja Node.js i NPM
if ! [ -x "$(command -v node)" ]; then
  sudo apt update -y
  sudo apt install software-properties-common apt-transport-https ca-certificates gnupg2 curl build-essential -y
  curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo apt install nodejs -y
  echo -e "\n\nNode.js installed 🔥\n\n"
fi

# Instalacja globalnych paczek npm
if ! [ -x "$(command -v ncu)" ]; then
  sudo npm install --global npm-check-updates
  echo -e "\n\nNpm Check Updates installed 🔥\n\n"
fi

# Instalacja Whois
if ! [ -x "$(command -v whois)" ]; then
  sudo apt-get install whois -y
  echo -e "\n\nWhois installed 🔥\n\n"
fi

# Instalacja jq (JSON formatter w terminalu)
if ! [ -x "$(command -v jq)" ]; then
  sudo apt install jq -y
  echo -e "\n\njq installed 🔥\n\n"
fi

# Instalacja bat (cat zamiennik z kolorowaniem składni)
if ! [ -x "$(command -v batcat)" ]; then
  sudo apt-get install bat -y
  echo -e "\n\nBat installed 🔥\n\n"
fi

# Instalacja Docker
if ! [ -x "$(command -v docker)" ]; then
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
  sudo apt update -y
  sudo apt install docker-ce docker-ce-cli containerd.io -y
  sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  sudo usermod -aG docker $USER
  echo -e "\n\nDocker installed 🔥\n\n"
fi

# Generowanie pary kluczy SSH
SSH_IDCOM_FILE=~/.ssh/id_idcom_rsa
if ! [ -f "$SSH_IDCOM_FILE" ]; then
  ssh-keygen -t rsa -b 4096 -C "jakub.soboczynski@idcom.pl" -f "$SSH_IDCOM_FILE"
  eval "$(ssh-agent -s)"
  ssh-add "$SSH_IDCOM_FILE"
  echo -e "\n\nSSH Key generated 🔥\n\n"
fi

# Instalacja Zsh
if ! [ -x "$(command -v zsh)" ]; then
  sudo apt install zsh -y
  chsh -s $(which zsh)

  # Instalacja pluginów zsh
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting
  echo -e "\n\nZsh with plugins installed 🔥\n\n"
fi

# Instalacja oh-my-zsh
OMZ_DIR=~/.oh-my-zsh
if ! [ -d "$OMZ_DIR" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo -e "\n\noh-my-zsh installed 🔥\n\n"
fi

# Instalacja powerlvl10k
P10K_DIR=~/.oh-my-zsh/custom/themes/powerlevel10k
if ! [ -d "$P10K_DIR" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  echo -e "\n\npowerlevel10k installed 🔥\n\n"
fi

# Instalacja fontconfig
if ! [ -x "$(command -v fc-list)" ]; then
  sudo apt-get install fontconfig -y
fi

# Instalacja powerline fonts
if ! [ "$(fc-list | grep -i powerline)" ]; then
  sudo apt-get install fonts-powerline -y
  echo -e "\n\nfonts-powerline installed 🔥\n\n"
fi

# Instalacja fontów
mkdir -p ~/.local/share/fonts
customFonts=(Meslo Inconsolata JetBrainsMono AnonymousPro CascadiaCode DroidSansMono FiraCode FiraMono Noto Overpass RobotoMono SpaceMono UbuntuMono)
for i in "${customFonts[@]}"; do
  if ! [ "$(fc-list | grep -i $i)" ]; then
    wget -nv https://github.com/ryanoasis/nerd-fonts/releases/latest/download/"$i".zip ~/.local/share/fonts
    unzip -oq ~/.local/share/fonts/"$i".zip -d ~/.local/share/fonts
    rm -rf ~/.local/share/fonts/*Windows*
    rm -rf ~/.local/share/fonts/"$i".zip
    echo -e "\n\n$i installed 🔥\n\n"
  fi
done
echo -e "\n\nFonts installed 🔥\n\n"

read -p "Do you want to reboot now? (y/n) " -n 1 -r
sudo reboot
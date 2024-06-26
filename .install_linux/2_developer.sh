#!/usr/bin/env bash

# File based on mathiasbynens and kentcdodds .macos files!
# mathiasbynens — https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# kentcdodds — https://github.com/kentcdodds/dotfiles/blob/master/.macos

# Run without downloading:
# curl -s https://raw.githubusercontent.com/idcom-jakub-soboczynski/dotfiles/master/.bootstrap_linux/.2_idcom.sh | bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.linux_idcom` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

echo -e "\n"
echo "Logging to Docker Hub..."
echo "------------------------------------------------"

if ! docker info | grep -i "username" &>/dev/null; then
  read -p "DockerHub Login: " DOCKER_HUB_LOGIN
  read -p "DockerHub Password: " DOCKER_HUB_PASSWORD
  docker login -u "$DOCKER_HUB_LOGIN" -p "$DOCKER_HUB_PASSWORD"
  echo "Docker Hub - logged in 🔥"
else
  echo "Docker Hub - already logged in! 👌"
fi

echo -e "\n"
echo "Generating SSH Keys..."
echo "------------------------------------------------"

SSH_IDCOM_FILE=~/.ssh/id_idcom_rsa
if ! [ -f "$SSH_IDCOM_FILE" ] &>/dev/null; then
  ssh-keygen -t ed25519 -b 4096 -C "jakub.soboczynski@idcom.pl" -f "$SSH_IDCOM_FILE"
  eval "$(ssh-agent -s)"
  ssh-add "$SSH_IDCOM_FILE"
  echo "SSH Key - generated 🔥"
else
  echo "SSH Key - already exists! 👌"
fi

echo -e "\n"
echo "Loggin in Github CLI..."
echo "------------------------------------------------"

if ! gh auth status | grep -i "Logged in to github.com" &>/dev/null; then
  gh auth login
  echo "Github CLI - logged in 🔥"
else
  echo "Github CLI - already logged in! 👌"
fi

echo -e "\n"
echo "Install Dotfiles..."
echo "------------------------------------------------"

if ! [ -d "$HOME/.dotfiles" ] &>/dev/null; then
  git clone -q --bare git@github.com:idcom-jakub-soboczynski/dotfiles.git $HOME/.dotfiles
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout -f
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME pull -f
  source ~/.zshrc
  echo "Dotfiles - installed 🔥"
else
  echo "Dotfiles - already exists! 👌"
fi

echo -e "\n"
echo "Install IDcom..."
echo "------------------------------------------------"

if ! command -v idcom &>/dev/null; then
  mkdir -p ~/IDcom/DEVOPS
  git clone git@github.com:IDcomGroup/pl.idcom.devops.devtool.git ~/IDcom/DEVOPS
  chmod +x ~/IDcom/DEVOPS/pl.idcom.devops.devtool/src/idcom
  echo "IDcom - installed 🔥"
else
  echo "IDcom - already exists! 👌"
fi

echo -e "\n"
echo "Install IDcom repositories..."
echo "------------------------------------------------"

if command -v idcom &>/dev/null; then
  if idcom git ls | grep -i "Nie Sklonowany" &>/dev/null; then
    idcom git clone
  fi

  if ! docker ps | grep -i "idcom" &>/dev/null; then
    idcom docker up
  fi
  echo "IDcom repositories - installed 🔥"
else
  echo "IDcom repositories - already exists! 👌"
fi

echo -e "\n"
echo "Creating symlinks for vscode settings..."
echo "------------------------------------------------"

if ! ls -laH ~/.config/Code/User | grep -i "^l" | grep -i keybindings.json &>/dev/null; then
  ln -s ~/.vscode/keybindings.json ~/.config/Code/User/keybindings.json
  echo "keybindings.json file - symlinked 🔥"
else
  echo "keybindings.json file - already exists 👌"
fi

if ! ls -laH ~/.config/Code/User | grep -i "^l" | grep -i settings.json &>/dev/null; then
  ln -s ~/.vscode/settings.json ~/.config/Code/User/settings.json
  echo "settings.json file - symlinked 🔥"
else
  echo "settings.json file - already exists 👌"
fi

if ! ls -laH ~/.config/Code/User | grep -i "^l" | grep -i projects.json &>/dev/null; then
  ln -s ~/.vscode/projects.json ~/.config/Code/User/projects.json
  echo "projects.json file - symlinked 🔥"
else
  echo "projects.json file - already exists 👌"
fi

if ! ls -laH ~/.config/Code/User | grep -i "^l" | grep -i spellright.dict &>/dev/null; then
  ln -s ~/.vscode/spellright.dict ~/.config/Code/User/spellright.dict
  echo "spellright.dict file - symlinked 🔥"
else
  echo "spellright.dict file - already exists 👌"
fi

if ! ls -laH ~/.config/Code/User | grep -i "^l" | grep -i snippets &>/dev/null; then
  rm -rf ~/.config/Code/User/snippets
  ln -s ~/.vscode/snippets ~/.config/Code/User
  echo "snippets dir - symlinked 🔥"
else
  echo "snippets dir - already exists 👌"
fi

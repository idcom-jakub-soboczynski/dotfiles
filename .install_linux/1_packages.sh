#!/usr/bin/env bash

# File based on mathiasbynens and kentcdodds .macos files!
# mathiasbynens — https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# kentcdodds — https://github.com/kentcdodds/dotfiles/blob/master/.macos

# Run without downloading:
# curl -s https://raw.githubusercontent.com/idcom-jakub-soboczynski/dotfiles/master/.bootstrap_linux/.1_packages.sh | bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.linux_packages` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

###############################################################################
# Tezivosky's Customizations                                                  #
###############################################################################

echo -e "\n\n"
echo "##################################################"
echo -e "\nHello $(whoami)! Let's set up your packages! 🔥\n"
echo "##################################################"

echo -e "\n"
echo "System update..."
echo "------------------------------------------------"

sudo apt update -yqq && sudo apt upgrade -yqq
echo "System updated 🔥"

echo -e "\n"
echo "Installing curl..."
echo "------------------------------------------------"

if ! command -v curl &>/dev/null; then
  sudo apt install curl -yqq
  echo "curl - installed 🔥"
else
  echo "curl - already exists! 👌"
fi

echo -e "\n"
echo "Installing wget..."
echo "------------------------------------------------"

if ! command -v wget &>/dev/null; then
  sudo apt install wget -yqq
  echo "wget - installed 🔥"
else
  echo "wget - already exists! 👌"
fi

echo -e "\n"
echo "Installing git..."
echo "------------------------------------------------"

if ! command -v git &>/dev/null; then
  sudo apt install git -yqq
  curl -s -L https://raw.githubusercontent.com/kamranahmedse/git-standup/master/installer.sh | sudo sh
  echo "git - installed 🔥"
else
  echo "git - already exists! 👌"
fi

echo -e "\n"
echo "Installing tree..."
echo "------------------------------------------------"

if ! command -v tree &>/dev/null; then
  sudo apt install tree -yqq
  echo "tree - installed 🔥"
else
  echo "tree - already exists! 👌"
fi

echo -e "\n"
echo "Installing fdfind..."
echo "------------------------------------------------"

if ! command -v fdfind &>/dev/null; then
  sudo apt install fdfind -yqq
  ln -s $(which fdfind) ~/.local/bin/fd
  echo "fdfind - installed 🔥"
else
  echo "fdfind - already exists! 👌"
fi

echo -e "\n"
echo "Installing fzf..."
echo "------------------------------------------------"

if ! command -v fzf &>/dev/null; then
  sudo apt install fzf -yqq
  echo "fzf - installed 🔥"
else
  echo "fzf - already exists! 👌"
fi

echo -e "\n"
echo "Installing snapd..."
echo "------------------------------------------------"

if ! command -v snap &>/dev/null; then
  sudo mv /etc/apt/preferences.d/nosnap.pref ~/nosnap.backup
  sudo apt update -yqq
  sudo apt install snapd -yqq
  echo "snapd - installed 🔥"
else
  echo "snapd - already exists! 👌"
fi

echo -e "\n"
echo "Installing flatpak..."
echo "------------------------------------------------"

if ! command -v flatpak &>/dev/null; then
  sudo apt install flatpak -yqq
  echo "flatpak - installed 🔥"
else
  echo "flatpak - already exists! 👌"
fi

echo -e "\n"
echo "Installing dropbox..."
echo "------------------------------------------------"

if ! command -v dropbox &>/dev/null; then
  sudo apt install dropbox -yqq
  echo "dropbox - installed 🔥"
else
  echo "dropbox - already exists! 👌"
fi

echo -e "\n"
echo "Installing keepassxc..."
echo "------------------------------------------------"

if ! command -v keepassxc &>/dev/null; then
  sudo apt-get install keepassxc -yqq
  echo "keepassxc - installed 🔥"
else
  echo "keepassxc - already exists! 👌"
fi

echo -e "\n"
echo "Installing slack..."
echo "------------------------------------------------"

if ! command -v slack &>/dev/null; then
  sudo snap install slack
  echo "slack - installed 🔥"
else
  echo "slack - already exists! 👌"
fi

echo -e "\n"
echo "Installing kazam..."
echo "------------------------------------------------"

if ! command -v kazam &>/dev/null; then
  sudo snap install kazam
  echo "kazam - installed 🔥"
else
  echo "kazam - already exists! 👌"
fi

echo -e "\n"
echo "Installing bruno..."
echo "------------------------------------------------"

if ! command -v bruno &>/dev/null; then
  sudo mkdir -p /etc/apt/keyrings
  sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/bruno.gpg --keyserver keyserver.ubuntu.com --recv-keys 9FA6017ECABE0266
  echo "deb [signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" | sudo tee /etc/apt/sources.list.d/bruno.list
  sudo apt update -yqq
  sudo apt install bruno -yqq
  echo "bruno - installed 🔥"
else
  echo "bruno - already exists! 👌"
fi

echo -e "\n"
echo "Installing llama..."
echo "------------------------------------------------"

if ! command -v llama &>/dev/null; then
  sudo snap install llama
  echo "llama - installed 🔥"
else
  echo "llama - already exists! 👌"
fi

echo -e "\n"
echo "Installing espanso..."
echo "------------------------------------------------"

if ! command -v espanso &>/dev/null; then
  sudo snap install espanso --classic --channel=latest/edge
  echo "espanso - installed 🔥"
else
  echo "espanso - already exists! 👌"
fi

echo -e "\n"
echo "Installing copyq..."
echo "------------------------------------------------"

if ! command -v copyq &>/dev/null; then
  sudo apt install copyq -yqq
  echo "copyq - installed 🔥"
else
  echo "copyq - already exists! 👌"
fi

echo -e "\n"
echo "Installing pip3..."
echo "------------------------------------------------"

if ! command -v pip3 &>/dev/null; then
  sudo apt-get install python3-pip -yqq
  echo "pip3 - installed 🔥"
else
  echo "pip3 - already exists! 👌"
fi

echo -e "\n"
echo "Installing google-chrome-stable..."
echo "------------------------------------------------"

if ! command -v google-chrome-stable &>/dev/null; then
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
  sudo apt update -yqq
  sudo apt install google-chrome-stable -yqq
  echo "google-chrome-stable - installed 🔥"
else
  echo "google-chrome-stable - already exists! 👌"
fi

echo -e "\n"
echo "Installing pip3 packets..."
echo "------------------------------------------------"

if command -v pip3 &>/dev/null; then
  pip3 install wrapt-timeout-decorator -q
  pip3 install case-converter -q
  pip3 install Faker -q
  pip3 install units -q
  pip3 install pydbus -q
  echo "Pip3 packets - installed 🔥"
else
  echo "Pip3 packets - already exists! 👌"
fi

echo -e "\n"
echo "Installing gimp..."
echo "------------------------------------------------"

if ! command -v gimp &>/dev/null; then
  sudo apt install gimp -yqq
  echo "gimp - installed 🔥"
else
  echo "gimp - already exists! 👌"
fi

echo -e "\n"
echo "Installing htop..."
echo "------------------------------------------------"

if ! command -v htop &>/dev/null; then
  sudo apt install htop -yqq
  echo "htop - installed 🔥"
else
  echo "htop - already exists! 👌"
fi

echo -e "\n"
echo "Installing ulauncher..."
echo "------------------------------------------------"

if ! command -v ulauncher &>/dev/null; then
  sudo apt install ulauncher -yqq
  echo "ulauncher - installed 🔥"
else
  echo "ulauncher - already exists! 👌"
fi

echo -e "\n"
echo "Installing inkscape..."
echo "------------------------------------------------"

if ! command -v inkscape &>/dev/null; then
  sudo apt-get update
  sudo apt-get install inkscape
  echo "inkscape - installed 🔥"
else
  echo "inkscape - already exists! 👌"
fi

echo -e "\n"
echo "Installing midnight commander..."
echo "------------------------------------------------"

if ! command -v mc &>/dev/null; then
  sudo apt install mc -yqq
  echo "midnight commander - installed 🔥"
else
  echo "midnight commander - already exists! 👌"
fi

echo -e "\n"
echo "Installing solaar..."
echo "------------------------------------------------"

if ! command -v solaar &>/dev/null; then
  sudo add-apt-repository ppa:daniel.pavel/solaar
  sudo apt-get update -yqq
  sudo apt-get install solaar -yqq
  echo "solaar - installed 🔥"
else
  echo "solaar - already exists! 👌"
fi

echo -e "\n"
echo "Installing vim..."
echo "------------------------------------------------"

if ! command -v vim &>/dev/null; then
  sudo apt install vim -yqq
  echo "vim - installed 🔥"
else
  echo "vim - already exists! 👌"
fi

echo -e "\n"
echo "Installing visual studio code..."
echo "------------------------------------------------"

if ! command -v code &>/dev/null; then
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
  sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  sudo apt-get install apt-transport-https -yqq
  sudo apt-get update -yqq
  sudo apt-get install code -yqq
  echo "visual studio code - installed 🔥"
else
  echo "visual studio code - already exists! 👌"
fi

echo -e "\n"
echo "Installing xclip..."
echo "------------------------------------------------"

if ! command -v xclip &>/dev/null; then
  sudo apt-get install xclip -yqq
  echo "xclip - installed 🔥"
else
  echo "xclip - already exists! 👌"
fi

if ! command -v mcfly &>/dev/null; then
  sudo curl -LSfs https://raw.githubusercontent.com/cantino/mcfly/master/ci/install.sh | sudo sh -s -- --git cantino/mcfly
  echo "mcfly - installed 🔥"
else
  echo "mcfly - already exists! 👌"
fi

echo -e "\n"
echo "Installing fast node manager (fnm)..."
echo "------------------------------------------------"

if ! command -v fnm &>/dev/null; then
  curl -fsSL https://fnm.vercel.app/install | bash
  echo "fnm - installed 🔥"
else
  echo "fnm - already exists! 👌"

  echo -e "\n"
  echo "Installing node..."
  echo "------------------------------------------------"

  if ! command -v node &>/dev/null; then
    fnm install --lts
    echo "node - installed 🔥"
  else
    echo "node - already exists! 👌"

    echo -e "\n"
    echo "Installing npn check updates..."
    echo "------------------------------------------------"

    if ! command -v ncu &>/dev/null; then
      npm install --global npm-check-updates
      echo "npn check updates - installed 🔥"
    else
      echo "npn check updates - already exists! 👌"
    fi

    echo -e "\n"
    echo "Installing alacritty-themes..."
    echo "------------------------------------------------"

    if ! command -v alacritty-themes &>/dev/null; then
      npm install --global alacritty-themes
      echo "alacritty-themes - installed 🔥"
    else
      echo "alacritty-themes - already exists! 👌"
    fi
  fi
fi

echo -e "\n"
echo "Installing eza..."
echo "------------------------------------------------"

if ! command -v eza &>/dev/null; then
  sudo mkdir -p /etc/apt/keyrings
  wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
  echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
  sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
  sudo apt update -yqq
  sudo apt install -yqq eza
  echo "eza - installed 🔥"
else
  echo "eza - already exists! 👌"
fi

echo -e "\n"
echo "Installing alacritty..."
echo "------------------------------------------------"

if ! command -v alacritty &>/dev/null; then
  sudo snap install alacritty --classic
  echo "alacritty - installed 🔥"
else
  echo "alacritty - already exists! 👌"
fi

echo -e "\n"
echo "Installing wezterm..."
echo "------------------------------------------------"

if ! command -v wezterm &>/dev/null; then
  curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
  echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
  sudo apt update -yqq
  sudo apt install wezterm -yqq
  echo "wezterm - installed 🔥"
else
  echo "wezterm - already exists! 👌"
fi

echo -e "\n"
echo "Installing table plus..."
echo "------------------------------------------------"

if ! command -v table-plus &>/dev/null; then
  sudo apt install software-properties-common -yqq
  wget -qO - https://deb.tableplus.com/apt.tableplus.com.gpg.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/tableplus-archive.gpg >/dev/null
  sudo add-apt-repository "deb [arch=amd64] https://deb.tableplus.com/debian/22 tableplus main"
  sudo apt update -yqq
  sudo apt install tableplus -yqq
  echo "table plus - installed 🔥"
else
  echo "table plus - already exists! 👌"
fi

echo -e "\n"
echo "Installing warp..."
echo "------------------------------------------------"

if ! command -v warp-terminal &>/dev/null; then
  sudo apt install warp-terminal -yqq
  echo "warp - installed 🔥"
else
  echo "warp - already exists! 👌"
fi

echo -e "\n"
echo "Installing flameshot..."
echo "------------------------------------------------"

if ! command -v flameshot &>/dev/null; then
  sudo apt install flameshot -yqq
  echo "flameshot - installed 🔥"
else
  echo "flameshot - already exists! 👌"
fi

echo -e "\n"
echo "Installing tmux..."
echo "------------------------------------------------"

if ! command -v tmux &>/dev/null; then
  sudo apt install tmux -yqq
  echo "tmux - installed 🔥"
else
  echo "tmux - already exists! 👌"
fi

echo -e "\n"
echo "Installing hub..."
echo "------------------------------------------------"

if ! command -v hub &>/dev/null; then
  sudo apt-get install hub -yqq
  echo "hub - installed 🔥"
else
  echo "hub - already exists! 👌"
fi

echo -e "\n"
echo "Installing whois..."
echo "------------------------------------------------"

if ! command -v whois &>/dev/null; then
  sudo apt-get install whois -yqq
  echo "whois - installed 🔥"
else
  echo "whois - already exists! 👌"
fi

echo -e "\n"
echo "Installing jq..."
echo "------------------------------------------------"

if ! command -v jq &>/dev/null; then
  sudo apt install jq -yqq
  echo "jq - installed 🔥"
else
  echo "jq - already exists! 👌"
fi

echo -e "\n"
echo "Installing batcat..."
echo "------------------------------------------------"

if ! command -v batcat &>/dev/null; then
  sudo apt-get install bat -yqq
  echo "batcat - installed 🔥"
else
  echo "batcat - already exists! 👌"
fi

echo -e "\n"
echo "Installing gh..."
echo "------------------------------------------------"

if ! command -v gh &>/dev/null; then
  type -p curl >/dev/null || (sudo apt update && sudo apt install curl -yqq)
  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg &&
    sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg &&
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null &&
    sudo apt update -yqq &&
    sudo apt install gh -yqq
  echo "gh - installed 🔥"
else
  echo "gh - already exists! 👌"
fi

echo -e "\n"
echo "Installing docker..."
echo "------------------------------------------------"

if ! command -v docker &>/dev/null; then
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
  sudo apt update -yqq
  sudo apt install docker-ce docker-ce-cli containerd.io -yqq
  sudo curl -sL "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  sudo usermod -aG docker $USER
  echo "docker - installed 🔥"
else
  echo "docker - already exists! 👌"
fi

echo -e "\n"
echo "Installing zsh..."
echo "------------------------------------------------"

if ! command -v zsh &>/dev/null; then
  sudo apt install zsh -yqq
  chsh -s $(which zsh)

  git clone -q https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions
  git clone -q https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting
  echo "zsh - installed 🔥"
else
  echo "zsh - already exists! 👌"
fi

echo -e "\n"
echo "Installing oh-my-zsh..."
echo "------------------------------------------------"

OMZ_DIR=~/.oh-my-zsh
if ! [ -d "$OMZ_DIR" ] &>/dev/null; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo "oh-my-zsh - installed 🔥"
else
  echo "oh-my-zsh - already exists! 👌"
fi

echo -e "\n"
echo "Installing fc-list..."
echo "------------------------------------------------"

if ! command -v fc-list &>/dev/null; then
  sudo apt-get install fontconfig -yqq
  echo "fc-list - installed 🔥"
else
  echo "fc-list - already exists! 👌"
fi

echo -e "\n"
echo "Installing fonts powerline..."
echo "------------------------------------------------"

if ! fc-list | grep -i powerline &>/dev/null; then
  sudo apt-get install fonts-powerline -yqq
  echo "fonts powerline - installed 🔥"
else
  echo "fonts powerline - already exists! 👌"
fi

echo -e "\n"
echo "Installing custom fonts..."
echo "------------------------------------------------"

mkdir -p ~/.local/share/fonts
customFonts=(Meslo Inconsolata JetBrainsMono Monaspace FiraCode FiraMono Noto Overpass RobotoMono SpaceMono UbuntuMono)
for i in "${customFonts[@]}"; do
  if ! ls ~/.local/share/fonts | grep -i "$i" &>/dev/null; then
    wget -qv https://github.com/ryanoasis/nerd-fonts/releases/latest/download/"$i".zip -O ~/.local/share/fonts/"$i".zip
    unzip -oq ~/.local/share/fonts/"$i".zip -d ~/.local/share/fonts
    rm -rf ~/.local/share/fonts/*Windows*
    rm -rf ~/.local/share/fonts/"$i".zip
    echo "$i - installed 🔥"
  else
    echo "$i - already exists! 👌"
  fi
done

echo -e "\n"
echo "Now you should install..."
echo "------------------------------------------------"

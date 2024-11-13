# ZSH THEMES
ZSH_THEME="robbyrussell"

# ZSH PLUGINS
plugins=(zsh-syntax-highlighting zsh-autosuggestions)

# LOAD CONFIGS
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

for file in ~/.{aliases,exports,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# bun completions
[ -s "/home/jakub/.bun/_bun" ] && source "/home/jakub/.bun/_bun"

# MCFLY
eval "$(mcfly init zsh)"

# HOMEBREW
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# FNM CONFIG
eval "$(fnm env --use-on-cd)"

# STARSHIP
eval "$(starship init zsh)"

# ZOXIDE
eval "$(zoxide init zsh)"

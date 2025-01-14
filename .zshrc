# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH THEMES
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# ZOXIDE
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

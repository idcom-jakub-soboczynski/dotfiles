## THEMES
### See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

## PLUGINS
plugins=(zsh-syntax-highlighting zsh-autosuggestions)

for file in ~/.{aliases,exports,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

source $ZSH/oh-my-zsh.sh

# fnm
eval "$(fnm env --use-on-cd)"


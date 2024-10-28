# setup zsh prompt 
autoload -Uz promptinit && promptinit

# source antidote
source $DOTFILES/vendor/antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

eval "$(starship init zsh)"

export ZSH_THEME=zephyr

prompt starship $ZSH_THEME

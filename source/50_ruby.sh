# export PATH

# rbenv init.
# PATH="$(path_remove $DOTFILES/vendor/rbenv/bin):$DOTFILES/vendor/rbenv/bin"

if [[ "$(command -v rbenv)" ]]; then
  eval "$(rbenv init -)"
fi
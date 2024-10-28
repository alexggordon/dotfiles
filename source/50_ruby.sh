export PATH=$DOTFILES/vendor/rbenv/bin/:$PATH

if [[ "$(command -v rbenv)" ]]; then
  eval "$(rbenv init -)"
fi

# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Exit if Homebrew is not installed.
[[ ! "$(command -v brew)" ]] && e_error "Brew recipes need Homebrew to install." && return 1

# Homebrew recipes
recipes=(
  bash
  coreutils
  git
  git-extras
  htop
  hub
  jq
  yq
  fzf
  slumber
  ripgrep
  pyenv
  smartmontools
  thefuck
  tmux
  tmux-xpanes
  tree
  wget
  duckdb
  tldr
  libyaml
)

brew_install_recipes
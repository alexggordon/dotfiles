# OSX-only stuff. Abort if not OSX.
is_osx || return 1

eval "$(/opt/homebrew/bin/brew shellenv)"
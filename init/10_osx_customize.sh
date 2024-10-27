# OSX-only stuff. Abort if not OSX.
is_osx || return 1

cp -rf $DOTFILES/fonts/* ~/Library/Fonts/
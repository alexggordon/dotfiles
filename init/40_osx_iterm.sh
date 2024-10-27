# OSX-only stuff. Abort if not OSX.
is_osx || return 1


###############################################################################
# Iterm2.app                                                               #
###############################################################################

# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.config/apps/iterm/"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

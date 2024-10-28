# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Make 'less' more.
[[ "$(command -v lesspipe.sh)" ]] && eval "$(lesspipe.sh)"

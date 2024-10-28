# Case-insensitive globbing (used in pathname expansion)
setopt EXTENDED_GLOB

alias grep='grep --color=auto'

# Prevent less from clearing the screen while still showing colors.
export LESS=-XR

# "fuck"
if [[ "$(which thefuck)" ]]; then
  eval $(thefuck --alias)
fi

# Run a command repeatedly in a loop, with a delay (defaults to 1 sec).
# Usage:
#   loop [delay] single_command [args]
#   loopc [delay] 'command1 [args]; command2 [args]; ...'
# Note, these do the same thing:
#   loop 5 bash -c 'echo foo; echo bar;
#   loopc 5 'echo foo; echo bar'
function loopc() { loop "$@"; }
function loop() {
  local caller=$(caller 0 | awk '{print $2}')
  local delay=1
  if [[ $1 =~ ^[0-9]*(\.[0-9]+)?$ ]]; then
    delay=$1
    shift
  fi
  while true; do
    if [[ "$caller" == "loopc" ]]; then
      bash -c "$@"
    else
      "$@"
    fi
    sleep $delay
  done
}

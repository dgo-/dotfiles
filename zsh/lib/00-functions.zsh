# contains base function used in my zsh setup

# add $1 in front of that path if it is not already in
pathadd() {
  new="${1}"
  if [ -d "${new}" ]; then
    if [[ ":${PATH}:" != *":${new}:"* ]]; then
      PATH="${new}:${PATH}"
    fi  
  fi  
}


## check if given command exists on the system
command_exists() {
  command -v "${1}" > /dev/null
  return $?
}

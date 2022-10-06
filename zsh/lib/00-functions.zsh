# contains base function used in my zsh setup

# add $1 in front of that path if it is not already in
pathadd_pre() {
  new="${1:A}"
  if [ -d "${new}" ]; then
    if [[ ":${PATH}:" != *":${new}:"* ]]; then
      PATH="${new}:${PATH}"
    fi
  fi
}

pathadd_post(){
  new="${1:A}"
  if [ -d "${new}" ]; then
    if [[ ":${PATH}:" != *":${new}:"* ]]; then
      PATH="${PATH}:${new}"
    fi
  fi
}


## check if given command exists on the system
command_exists() { (( $+commands[$1] )) }

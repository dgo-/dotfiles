### add dirs to PATH

# helper
pathadd() {
  new="${1}"
  if [ -d "${new}" ]; then
    if [[ ":${PATH}:" != *":${new}:"* ]]; then
      PATH="${new}:${PATH}"
    fi
  fi
}

# last line will be first in PATH
pathadd "${GOBIN}"
pathadd "/usr/local/bin"
pathadd "${HOME}/bin"

# finally report PATH
export PATH

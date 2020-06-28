### add dirs to PATH

# last line will be first in PATH
pathadd "${GOBIN}"
pathadd "/usr/local/bin"
pathadd "${HOME}/bin"

# finally report PATH
export PATH

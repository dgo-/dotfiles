### add dirs to PATH

# last line will be first in PATH
pathadd_pre "${GOBIN}"
pathadd_pre "/usr/local/bin"
pathadd_pre "${HOME}/bin"

# finally report PATH
export PATH

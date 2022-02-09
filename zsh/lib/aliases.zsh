##########################################
# ls => exa

# exchange ls with exa 
# https://the.exa.website/
command_exists "exa"
if [ "${?}" -eq "0" ]; then
  alias ls='exa'
else 
  # if no exa can be used make ls colorful
  if [ "${OSTYPE}" = "linux-gnu" ]; then
    alias ls='ls --color=auto'
  elif [ "${OSTYPE}" = "darwin" ]; then
    export CLICOLOR=1
    export LSCOLORS=GxFxCxDxBxegedabagaced
  fi
fi

# options
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'

# mistakes
alias sl=ls

##########################################
# cat/less/man => bat 

# exchange cat/less with bat
# https://github.com/sharkdp/bat
command_exists "bat"
if [ "${?}" -eq "0" ]; then
  alias cat='bat -pp'
  alias less='bat --paging=always'

  # override MANPAGER
  export MANPAGER="sh -c 'col -bx | bat -l man -p'"

fi

##########################################
# grep => ripgrep 

# exchange grep with ripgrep
# https://github.com/BurntSushi/ripgrep
command_exists "rg"
if [ "${?}" -eq "0" ]; then
  alias grep='rg'
fi

##########################################
# neovim
command_exists "nvim"
if [ "${?}" -eq "0" ]; then
  alias vim=nvim
fi

##########################################
# mkdir
alias mkdir='mkdir -p'
alias mdkir='mkdir -p'

##########################################
# cd
alias ..='cd ..'
alias cd..='cd ..'

##########################################
# Show history
alias history='fc -l 1'

##########################################
# kubectl
alias k='kubectl'

##########################################
# ssh
alias ssh='TERM=xterm ssh'

##########################################
# ls

# exchange ls with exa 
# https://the.exa.website/
command_exists "exa"
if [ "${?}" -eq "0" ]; then
  alias ls='exa'
else 
  # if no exa can be used make ls colorful
  if [ "${OSTYPE}" == "linux-gnu" ]; then
    alias ls='ls --color=auto'
  elif [ "${OSTYPE}" == "darwin" ]; then
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

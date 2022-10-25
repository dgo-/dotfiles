################################
# commandline tools

export EDITOR="vim"

################################
# apps by OS
if [[ $OSTYPE == darwin* ]]; then
  alias browser="open -a /Applications/Google\ Chrome.app"


elif [[ $OSTYPE == linux* ]]; then
  alias browser="google-chrome"

fi

################################
# default apps by os
alias -s md=vim

if [[ $OSTYPE == darwin* ]]; then
  alias -s html="browser"
elif [[ $OSTYPE == linux* ]]; then
  alias -s html="browser"
  alias -s {pdf,PDF}="browser"
fi

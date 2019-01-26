# set -x

############################################################
# Antigen
source ${HOME}/.config/zsh/antigen.zsh

antigen use oh-my-zsh

# load bundles
antigen bundle dotenv
antigen bundle gradle
antigen bundle docker
antigen bundle golang
antigen bundle history
antigen bundle alexrochas/zsh-extract
antigen bundle alexrochas/zsh-vim-crtl-z
antigen bundle zsh-users/zsh-completions
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle Tarrasch/zsh-autoenv
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# apply
antigen apply

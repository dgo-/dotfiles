#
# modules
#
# quote pasted URLs
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

#
# directory
#
#Make cd push the old directory onto the directory stack. 
setopt auto_pushd
#Don’t push multiple copies of the same directory onto the directory stack. 
setopt pushd_ignore_dups
# expand ~
setopt auto_name_dirs

#
# Prompt
#
# set fallback theme
PS1="%n@%m:%~%# "
# Setup the prompt with pretty colors
setopt prompt_subst

#
# History
#
#set file
HISTFILE=$HOME/.zsh_history
HISTSIZE=500
SAVEHIST=500
# not execute command from history instant
setopt hist_verify
# not add commandline with space to history
setopt hist_ignore_space
# ignore duplication command history list
setopt hist_ignore_dups

#
# other options
#
# disable correction
unsetopt correct_all 
# shut up
setopt no_beep
#Perform implicit tees or cats when multiple redirections are attempted (see Redirection). 
setopt multios
# show more info about jobs
setopt long_list_jobs

#
# set umask
#
umask ${UMASK}

#
# export variables
#
export EDITOR

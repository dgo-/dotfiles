# general
setopt no_beep        # disable beeps

# promting
setopt multios        # Perform implicit tees or cats when multiple redirections are attempted (see Redirection).

# input/output
unsetopt FLOW_CONTROL # reclaim ctrl+s (prevent the terminal from hanging)
unsetopt correct_all  # disable correction
setopt rmstarsilent   # don't ask for rm *

# Changing Directories
export DIRSTACKSIZE=11      # keep 11 directories in stack
setopt auto_pushd           # Make cd push the old directory onto the directory stack.
setopt PUSHD_IGNORE_DUPS    # Don’t push multiple copies of the same directory onto the directory stack.

# completion
setopt auto_name_dirs       # Any parameter that is set to the absolute name of a directory immediately becomes a name for that directory

# history
HISTFILE="${HOME}/.zsh_history" # history file
HISTSIZE=1000               # number of histroy commands
SAVEHIST=1000               # The history is trimmed when its length excedes SAVEHIST by 20%.
setopt hist_verify          # not execute command from history instant
setopt hist_ignore_space    # not add commandline with space to history
setopt hist_ignore_dups     # ignore duplication command history list

# vim mode
bindkey -v
export KEYTIMEOUT=1

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

zle -N edit-command-line
autoload -Uz edit-command-line
bindkey -M vicmd 'e' edit-command-line

sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
        LBUFFER="${LBUFFER#sudo }"
    elif [[ $BUFFER == $EDITOR\ * ]]; then
        LBUFFER="${LBUFFER#$EDITOR }"
        LBUFFER="sudo $EDITOR $LBUFFER"
    elif [[ $BUFFER == sudoedit\ * ]]; then
        LBUFFER="${LBUFFER#sudoedit }"
        LBUFFER="$EDITOR $LBUFFER"
    else
        LBUFFER="sudo $LBUFFER"
    fi
}
zle -N sudo-command-line
# Defined shortcut keys: [Esc] [Esc]
bindkey '^s' sudo-command-line
bindkey -M vicmd 's' sudo-command-line

#commandline editor
autoload -U edit-command-line
zle -N edit-command-line

# set basic layout
if [ "${ZLE_MODE}" = "vi" ]; then
	# basic layout vim
	bindkey -v
	export KEYTIMEOUT=1

	bindkey '^P' up-history
	bindkey '^N' down-history
	bindkey '^?' backward-delete-char
	bindkey '^h' backward-delete-char
	bindkey '^w' backward-kill-word
	bindkey '^r' history-incremental-search-backward

	bindkey '\C-e' edit-command-line
elif [ "${ZLE_MODE}" = "emacs" ]; then
	bindkey -e
	bindkey '\ee' edit-command-line
fi

bindkey '\ew' kill-region
bindkey -s '\el' "ls\n"
bindkey -s '\e.' "..\n"
bindkey '^r' history-incremental-search-backward
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history

# make search up and down work, so partially type and hit up/down to find relevant stuff
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line
bindkey "^[OF" end-of-line
bindkey ' ' magic-space    # also do history expansion on space

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

bindkey '^[[Z' reverse-menu-complete

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

# file rename magick
bindkey "^[m" copy-prev-shell-word

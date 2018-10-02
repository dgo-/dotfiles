# install my dotfiles

# variables
SHELL    = /bin/bash
SRC_ROOT = $(CURDIR)
DST_ROOT = $(HOME)
TARGET   = $(shell uname -s | tr '[A-Z]' '[a-z]' 2>/dev/null || echo unknown)

# choose os
all: $(TARGET)

# diffrent operation systems
darwin: base tmux vim zsh mutt puppet-lint perlcriticrc 
linux: base tmux vim zsh i3 X fluxbox mutt puppet-lint perlcriticrc fonts 

# configurations
base:
	mkdir -p $(DST_ROOT)/.config
	git submodule init && git submodule update

tmux:
	ln -fsn $(SRC_ROOT)/tmux/tmux.conf  $(DST_ROOT)/.tmux.conf

vim:
	ln -fsn $(SRC_ROOT)/vim/   $(DST_ROOT)/.vim
	ln -fsn $(SRC_ROOT)/vim/vimrc $(DST_ROOT)/.vimrc

zsh:
	ln -fsn $(SRC_ROOT)/zsh/zshrc      $(DST_ROOT)/.zshrc
	ln -fsn $(SRC_ROOT)/zsh/zshenv     $(DST_ROOT)/.zshenv
	ln -fsn $(SRC_ROOT)/zsh/zsh $(DST_ROOT)/.config/zsh

i3:
	ln    -fsn $(SRC_ROOT)/i3  $(DST_ROOT)/.config/i3

X:
	ln -fsn $(SRC_ROOT)/X/Xdefaults $(DST_ROOT)/.Xdefaults
	ln -fsn $(SRC_ROOT)/X/xinitrc   $(DST_ROOT)/.xinitrc
	ln -fsn $(SRC_ROOT)/X/xlaunchD   $(DST_ROOT)/.config/xlaunchD
	ln -fsn $(SRC_ROOT)/X/Xmodmap   $(DST_ROOT)/.Xmodmap
	ln -fsn $(SRC_ROOT)/X/mimeapps.list   $(DST_ROOT)/.config/mimeapps.list

fluxbox:
	ln -fsn $(SRC_ROOT)/fluxbox $(DST_ROOT)/.fluxbox

mutt:
	ln -fsn $(SRC_ROOT)/mutt $(DST_ROOT)/.mutt

puppet-lint:
	ln -fsn $(SRC_ROOT)/puppet-lint/puppet-lint.rc  $(DST_ROOT)/.puppet-lint.rc

perlcriticrc:
	ln -fsn $(SRC_ROOT)/perlcriticrc/perlcriticrc $(DST_ROOT)/.perlcriticrc

fonts:
	ln -fsn $(SRC_ROOT)/fonts $(DST_ROOT)/.fonts

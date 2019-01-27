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

linux: _base _vim _zsh _i3 _X _fonts _systemd

# configurations
_base:
	mkdir -p $(DST_ROOT)/.config
	git submodule init && git submodule update

_tmux:
	ln -fsn $(SRC_ROOT)/tmux/tmux.conf  $(DST_ROOT)/.tmux.conf

_vim:
	ln -fsn $(SRC_ROOT)/vim/   $(DST_ROOT)/.vim
	ln -fsn $(SRC_ROOT)/vim/vimrc $(DST_ROOT)/.vimrc

_zsh:
	ln -fsn $(SRC_ROOT)/zsh/           $(DST_ROOT)/.config/zsh
	ln -fsn $(SRC_ROOT)/zsh/zshenv     $(DST_ROOT)/.zshenv
	ln -fsn $(SRC_ROOT)/zsh/zprofile   $(DST_ROOT)/.zprofile
	ln -fsn $(SRC_ROOT)/zsh/zshrc      $(DST_ROOT)/.zshrc

_i3:
	ln    -fsn $(SRC_ROOT)/i3  $(DST_ROOT)/.config/i3

_X:
	ln -fsn $(SRC_ROOT)/X $(DST_ROOT)/.config/X
	ln -fsn $(SRC_ROOT)/X/mimeapps.list   $(DST_ROOT)/.config/mimeapps.list

fluxbox:
	ln -fsn $(SRC_ROOT)/fluxbox $(DST_ROOT)/.fluxbox

mutt:
	ln -fsn $(SRC_ROOT)/mutt $(DST_ROOT)/.mutt

puppet-lint:
	ln -fsn $(SRC_ROOT)/puppet-lint/puppet-lint.rc  $(DST_ROOT)/.puppet-lint.rc

perlcriticrc:
	ln -fsn $(SRC_ROOT)/perlcriticrc/perlcriticrc $(DST_ROOT)/.perlcriticrc

_fonts:
	ln -fsn $(SRC_ROOT)/fonts $(DST_ROOT)/.fonts

_systemd:
	ln -fsn $(SRC_ROOT)/systemd $(DST_ROOT)/.config/systemd

_kitty:
	ln -fsn $(SRC_ROOT)/kitty $(DST_ROOT)/.config/kitty

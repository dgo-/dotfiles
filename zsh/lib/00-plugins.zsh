#! /bin/zsh
###################################################################################
# zinit (plugin manager)
###################################################################################
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit installer's chunk


###################################################################################
# plugin settings
###################################################################################

# just load the .env file
ZSH_DOTENV_PROMPT=false

###################################################################################
# look and feel
###################################################################################
zinit light zdharma/fast-syntax-highlighting

# prompt
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

# ls colors
zinit ice atclone"dircolors -b LS_COLORS > clrs.zsh" \
    atpull'%atclone' pick"clrs.zsh" nocompile'!' \
    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zinit light trapd00r/LS_COLORS

###################################################################################
# functions
###################################################################################

# extract archive .zip
zinit light alexrochas/zsh-extract

# load .env file
zinit snippet OMZ::plugins/dotenv/dotenv.plugin.zsh

zinit light wfxr/forgit

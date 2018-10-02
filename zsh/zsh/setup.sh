#! /bin/sh
# zsh setup.sh
#set -x

addon_zshrc="${plugin_dir}/zshrc"
ZSHHOME="${HOME}/.config/zsh"
ZSHRC="${HOME}/.zshrc"
ZSHENV="${HOME}/.zshenv"

linkfile "${plugin_dir}" "${ZSHHOME}"

linkfile "${plugin_dir}/zshrc" "${ZSHRC}"

linkfile "${plugin_dir}/zshenv" "${ZSHENV}"

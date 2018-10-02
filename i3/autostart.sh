#!/bin/bash
#set -x

AUTOSTART_DIR="${HOME}/.config/xlaunchD"

for i in $(ls ${AUTOSTART_DIR}/*.start); do 
  . ${i}
done 

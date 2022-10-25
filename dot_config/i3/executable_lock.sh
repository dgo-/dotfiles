#!/bin/bash
#set -x 

#IMG=$(find ~/pictures/wallpaper -type f -iregex '.*\.\(jpg\|png\)$' | head -n1)
TMP="/tmp/lock.png"

# make screenshot
scrot -z ${TMP}

#edit image
convert ${TMP}  -level 0%,100%,0.6 -filter Gaussian -resize 20% -define filter:sigma=1.5 -resize 500.5% -font DejaVu-Sans -pointsize 26 ${TMP}

# lock screen
i3lock -t -e -f -t -i ${TMP}
#sxiv ${TMP} # debug

rm ${TMP}

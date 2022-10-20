#!/bin/bash

i3status --config /home/sysadmin/.config/i3/i3status.conf | while :
do
    read line
    mouse=`xdotool getmouselocation | md5sum | awk '{print $1}' | cut -c 1-8`
    tzdate=`date -R | cut -d "+" -f 1`
#    echo "$mouse | $line | $tzdate |" || exit 1
    echo "$mouse | $tzdate|" || exit 1
done
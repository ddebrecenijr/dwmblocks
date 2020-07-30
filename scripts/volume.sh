#!/bin/sh

status=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
vol=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")

off=婢
low=
med=墳
high=
mute=ﱝ

if [[ $status == "off" ]]; then
    echo "$mute MUTED"
elif [[ $vol == 0 ]]; then
    echo "$off $vol%"
elif [[ $vol < 25 ]]; then
    echo "$low $vol%"
elif [[ $vol < 75 ]]; then
    echo "$med $vol%"
else
    echo "$high $vol%"
fi

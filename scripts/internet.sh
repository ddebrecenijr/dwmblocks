#!/bin/sh

if [[ $(cat /sys/class/net/wlan0/operstate) == "up" ]]; then
    echo " 直 "
else
    echo " 睊 "
fi

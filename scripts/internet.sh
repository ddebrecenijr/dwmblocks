#!/bin/sh

case "$(cat /sys/class/net/wlp2s0/operstate 2>/dev/null)" in
    up) wifi="$(awk '/^\s*w/ { print "直", int($3 * 100 / 70) "% " }' /proc/net/wireless)" ;;
    down) wifi="睊" ;;
esac

echo "$wifi"

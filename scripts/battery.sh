#! /bin/sh

battery=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

ramp10=
ramp20=
ramp30=
ramp40=
ramp50=
ramp60=
ramp70=
ramp80=
ramp90=
rampFull=

batteryLow=
batteryCharging=

resetColor=^d^
greenColor=^c#46ea4b^
yellowColor=^c#eef43a^
redColor=^c#d82417^


if [[ $status == "Charging" ]]; then
    echo "$greenColor $batteryCharging $resetColor$battery%"
elif [[ $battery -lt 5 ]]; then
    echo "$redColor $batteryLow $resetColor$battery%"
elif [[ $battery -lt 10 ]]; then
    echo "$redColor $ramp10 $resetColor$battery%"
elif [[ $battery -lt 20 ]]; then
    echo "$redColor $ramp20 $resetColor$battery%"
elif [[ $battery -lt 30 ]]; then
    echo "$yellowColor $ramp30 $resetColor$battery%"
elif [[ $battery -lt 40 ]]; then
    echo "$yellowColor $ramp40 $resetColor$battery%"
elif [[ $battery -lt 50 ]]; then
    echo "$yellowColor $ramp50 $resetColor$battery%"
elif [[ $battery -lt 60 ]]; then
    echo $yellowColor "$ramp60 $resetColor$battery%"
elif [[ $battery -lt 70 ]]; then
    echo "$yellowColor $ramp70 $resetColor$battery%"
elif [[ $battery -lt 80 ]]; then
    echo "$greenColor $ramp80 $resetColor$battery%"
elif [[ $battery -lt 90 ]]; then
    echo "$greenColor $ramp90 $resetColor$battery%"
else
    echo "$greenColor $rampFull $resetColor$battery%"
fi

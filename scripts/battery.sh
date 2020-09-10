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

if [[ $status == "Charging" ]]; then
    echo " $batteryCharging $battery% "
elif [[ $battery -lt 5 ]]; then
    echo " $batteryLow $battery% "
elif [[ $battery -lt 10 ]]; then
    echo " $ramp10 $battery% "
elif [[ $battery -lt 20 ]]; then
    echo " $ramp20 $battery% "
elif [[ $battery -lt 30 ]]; then
    echo " $ramp30 $battery% "
elif [[ $battery -lt 40 ]]; then
    echo " $ramp40 $battery% "
elif [[ $battery -lt 50 ]]; then
    echo " $ramp50 $battery% "
elif [[ $battery -lt 60 ]]; then
    echo  "$ramp60 $battery% "
elif [[ $battery -lt 70 ]]; then
    echo " $ramp70 $battery% "
elif [[ $battery -lt 80 ]]; then
    echo " $ramp80 $battery% "
elif [[ $battery -lt 90 ]]; then
    echo " $ramp90 $battery% "
else
    echo " $rampFull $battery% "
fi

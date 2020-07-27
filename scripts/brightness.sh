#!/bin/sh

light=$(xbacklight)
dim=
bright=

if [[ $light > 50 ]]; then
    printf " %s %0.0f%% " $bright $light
else
    printf " %s %0.0f%% " $dim $light
fi

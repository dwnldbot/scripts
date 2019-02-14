#!/usr/bin/env bash
#
# change master volume

if [[ $# -eq 0 ]] ; then
    light
fi

if [[ $1 = 'u' ]]; then
    light -A 5
elif [[ $1 = 'd' ]]; then
    light -U 5
else
    light -S $1
fi

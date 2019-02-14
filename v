#!/usr/bin/env bash
#
# change master volume

if [[ $# -eq 0 ]] ; then
    amixer
fi

if [[ $1 = 'u' ]]; then
    amixer sset Master 5%+ > /dev/null
elif [[ $1 = 'd' ]]; then
    amixer sset Master 5%- > /dev/null
else
    amixer sset Master $1% > /dev/null
fi

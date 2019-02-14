#!/usr/bin/env bash
#TODO:
# * do nothing if target symlink already exists
# * use 'find . -mindepth 1 -type d' 

link() {
    echo ${1}/
    for lfile in ${1}/*; do
        file=${lfile##*/}
        if test -d ${1}/$file; then
            mkdir -p ${HOME}${2}/$file
            link ${1}/$file ${2}/$file
        else
            echo ${HOME}${2}/$file
#            ln -s -b ${1}/$file ${HOME}${2}/$file
        fi
    done
}

test -z $1 && echo "usage: stow.sh <src>" && exit 1
if test ! -d $1; then echo "$1 is no directory!" ; exit 1; fi
#if test ! -d $2; then echo "$2 is no directory!" ; exit 1; fi

SRCDIRTRUNC=${1%%/}
SRCFOLDERNAME=${SRCDIRTRUNC##*/}
#DESTDIRTRUNC=${2%%/}
#DESTFOLDER="${DESTDIRTRUNC}/${SRCFOLDERNAME}"

#echo $DESTFOLDER
#ln -s -b ${SRCDIRTRUNC}/* $DESTFOLDER
link $SRCDIRTRUNC ""

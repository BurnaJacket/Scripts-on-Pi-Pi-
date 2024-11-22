#!/bin/bash

removelog="/home/pi/Documents/remove.log"

if [ $# -eq 0 ] ; then
	echo "Usage $0 please enter a list of files or directories to delete " >&2
	exit 1
fi

silent=false
if [ $1 == "-s" ] ; then
	echo "$(date): $USER: Removed: $2" >> $removelog
	silent=true
	shift
else
	echo "$(date): $USER: Removed: $1" >> $removelog
	echo "$(date): $USER: Removed: $1"
fi

if [ silent == "true" ] ; then
	#echo "$(date): $USER: Removed: $2" >> $removelog
	usr/bin/rm "$2"
else
	/usr/bin/rm "$1"
fi


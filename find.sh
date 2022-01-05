#!/bin/bash


if [[ -n "$1" ]]; then
	if [[ -n "$2" ]]; then
		ls -Rp $1 | grep -v / | grep "$2"
	else
		echo "Enter the file name"
	fi
else
	echo "Enter the path"
fi

#!/bin/bash

if [[ -n $MY_PATH ]]; then
    if [[ ${1,,} == "file" ]]; then
	echo Non-directory files in \"$MY_PATH\":
	ls -p $MY_PATH | grep -v /
    elif [[ ${1,,} == "dir" || $1 == "directory" ]]; then
	echo Directories in \"$MY_PATH\":
	ls -p $MY_PATH | grep /
    else
	if [[ -z $1 ]]; then
	    echo "No argument"
	else
	    echo "Unknown argument: $1"
	fi
    fi
    else
	echo "MY_PATH is undefined or empty"
fi

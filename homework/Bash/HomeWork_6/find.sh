#!/bin/bash

function find {
	if [[ $# -eq 0 ]]; then
		echo "Give arguments!"
	elif [[ "$1" == "help" ]]; then
		echo "Please enter 2 arguments first the directory name where you search your file and second the searched file or directory name"
	else

	path=$1/*
	file=$2

	for i in $path
	do
		if [[ -f $i ]]; then
			echo $i
		elif [[ -d $i ]]; then
			find $i
		else 
			echo $i
		fi
	done
	fi
}
find $@

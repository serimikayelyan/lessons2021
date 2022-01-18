#!/bin/bash

if [[ -d $2 ]]; then
	cat $1 >> $2/$1

elif [[ -f $2 ]]; then
	echo "$2=file"
fi

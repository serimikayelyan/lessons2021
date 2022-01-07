#!/bin/bash

path=$1
file=$2
function find
{
	for i in $path/*; do
		if [[  `basename "$i"` == $file && -f $i ]]; then
			realpath $i
		elif [[ -d $i ]]; then
			path=$i
            find
        fi
    done
} 
find

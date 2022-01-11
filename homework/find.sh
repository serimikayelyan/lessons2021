#!/bin/bash
dir=$1
file=$2
function find_
{
	for i in $dir/*; do
		if [[ -f $i ]] && [[ $i =~ .*$file ]] 
		then
			echo $i
		elif [[ -d $i ]]; then
			dir=$i
            		find_ $dir $file
        fi
    done
} 
find_ $1 $2

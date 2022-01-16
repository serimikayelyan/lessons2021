#!/bin/bash

function main
{
    cpfile=$1
    filename=$2
    if [[ $cpfile == "" ]]
    then
	    echo "Invalid argument to copy"
	    echo "Correct the 1st argument"
	    exit 1
    else
	    if [[ -f $cpfile ]]
	    then
		lastchar=$((${#filename}-1))

		if [[ $filename == "" ]]
		then
		    echo "Invalid argument to name copying file"
		    echo "Give name your copying file: Correct the 2nd argument"
		    exit 1
	    	elif [[ ${filename:$lastchar:1} == / ]]
		then
		    echo "Invalid argument to name copying file"
		    echo "Give name your copying file: Correct the 2nd argument"
		    exit 1
	    	else
			cat $cpfile > $filename
		fi
	    else
		    echo "No such file to copy"
		    echo "Correct 1st argument"
		    exit 2
	    fi
    fi
}

main $1 $2

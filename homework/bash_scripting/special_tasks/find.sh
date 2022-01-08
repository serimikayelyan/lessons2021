#!/bin/bash

asked_for_help=false

function checkforhelp
{
    input=" $1 "

    if [[ $input =~ " --help " || $input =~ " -h " ]]; then
	echo "$0 [absolute/relative path] [file name]"
	asked_for_help=true
    fi
}

function recursive_find
{
    starting_point=$1
    file_name=$2

    file_found=()

    directories="`ls -F $starting_point | grep / `"
    directories=(${directories//"/"/""})
    
    for d in ${directories[@]}; do
	file_found+=(`recursive_find "$starting_point/$d" $file_name`)
	if [[ -e "$starting_point/$d/$file_name" ]]; then
	    file_found+=("$starting_point/$d/$file_name")
	fi
    done

    echo ${file_found[@]}
}


function main
{
    starting_point=$1
    file_name=$2

    file_found=()

    if [[ ${#starting_point} -eq 0 ]]; then
	echo No starting point is given "(use --help for more info)"
        return 1
    fi

    if [[ ${#file_name} -eq 0 ]]; then
	echo No file name is given "(use --help for more info)"
	return 2
    fi
    
    if [[ ! ${starting_point[0]} =~ ^[/~] ]]; then
        starting_point="$PWD/$starting_point"
	if [[ ! -e $starting_point ]]; then
	    echo \"$starting_point\" does not exist
	    return 3
	fi
    fi

    if [[ -e "$starting_point/$file_name" ]]; then
	file_found+=("$starting_point/$file_name")
    fi

    file_found+=(`recursive_find "$1" "$2"`)

    for i in ${file_found[@]}; do
	echo $i
    done

    if [[ ${#file_found[@]} -eq 0 ]]; then
	echo No file found
    fi
}

checkforhelp "$*"
if [[ $asked_for_help == false ]]; then
    main "$1" "$2"
fi

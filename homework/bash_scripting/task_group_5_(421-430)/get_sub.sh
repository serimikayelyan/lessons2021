#!/bin/bash

function main
{
    substrings=($@)
    
    if [[ $# -eq 0 ]]; then
	echo No substring is given "(input substrings as argument)"
	return 2
    fi

    echo DISCLAIMER: Search is case-sensetive

    read -p "Enter string: " string

    if [[ ${#string} -eq 0 ]]; then
	echo No input
	return 1
    fi

    for i in ${substrings[@]}; do
	for ((j=0;j<=$((${#string} - ${#i}));j++)); do
	    if [[ ${string:$j:${#i}} == $i ]]; then
		echo $i: True
		break
	    elif [[ $j -eq $((${#string} - ${#i})) ]]; then
		echo $i: False
		break
	    fi
	done

    done
}
main $@

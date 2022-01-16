#!/bin/bash

source calc.sh

function poly_main
{
    local polynomial="`cat polynomial.txt`"

    local spaced=(`setSpaces "$polynomial"`)
    local letters_replaced=""

    local prev_char
    for ((i=0;i<${#polynomial};i++)); do
	if [[ ${polynomial:$i:1} =~ [A-Za-z] ]]; then
	    read -p "input ${polynomial:$i:1}: " value
	    while [[ ! $value =~ ^[+-]?[0-9]+$ ]]; do
		read -p "Not a number, try again. input ${polynomial:$i:1}:" value
	    done
	    if [[ ! $prev_char =~ [$operators] ]]; then
		letters_replaced+="*"
	    fi
	    letters_replaced+="$value"
    	else
	    letters_replaced+="${polynomial:$i:1}"
	fi
	prev_char="${polynomial:$i:1}"
    done

    echo ${letters_replaced//"*"/"\*"}
    #main "$letters_replaced"
}
poly_main

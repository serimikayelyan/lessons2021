#!/bin/bash

function main
{
    m=$1

    if [[ ! $m ]]; then
	echo No size is given
	return 1
    elif [[ ! $m =~ [0-9] ]]; then
	echo $m is not a number
	return 2
    fi

    matrix=()
    echo Input lines "(Spaces between elements)"
    for ((i=0; i<$m; i++)); do
	read -p "$(($i + 1)):" line
	line_arr=($line)

	if [[ ! $line =~ ^[\ 0-9]+$ ]]; then
	    echo Character in line
	    return 3
	elif [[ ! ${#line_arr[@]} -eq $m ]]; then
	    echo line lenght should be same as matrix height "($m)"
	    return 4
	fi

	matrix+=(${line_arr[@]})
    done

#-----------------------------------------------------------------------

    read -p "k: " k

    prod=1
    found=false

    for ((i=0;i<${#matrix[@]};i++)); do
	((x = $i % $m ))
	((y = $i / $m ))

	if [[ $(($x + $y)) -le $(($m - 1)) && $(( ${matrix[$i]} % $k )) -eq 0 ]]; then
	    ((prod*=${matrix[$i]}))
	    found=true
	fi
    done

    if [[ $found == false ]]; then
	echo No such elements were found
	return
    fi

    echo $prod
}

main $1

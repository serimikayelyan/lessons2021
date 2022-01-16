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
   
    k=2

    sum=0
    count=0

    for ((i=0;i<${#matrix[@]};i++)); do
	((x = $i % $m ))
	((y = $i / $m ))

	if [[ $x -le $y && $((${matrix[$i]} % $k)) -eq 0 ]]; then
	    ((sum+=${matrix[$i]}))
	    ((count++))
	fi
    done

    if [[ ! $count -gt 0 ]]; then
	echo No such elements were found
	return
    fi

    echo $(($sum / $count))
}

main $1

#!/bin/bash

function task152 {
	sum=1
	for (( i=1; i<=$1; i++ ))
	do
		if [[ $(( $i % $2 )) -eq 0 ]]
		then
			sum=$(( $sum * $i ))
		fi
	done

	echo $sum
}

task152 10 2

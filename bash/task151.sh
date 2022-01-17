#!/bin/bash

function task151 {
	sum=0
	for (( i=1; i<=$1; i++ ))
	do
		if [[ $(( $i % $2 )) -eq 0 ]]
		then
			sum=$(( $sum + $i ))
		fi
	done

	echo $sum
}

task151 10 2

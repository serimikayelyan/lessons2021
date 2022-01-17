#!/bin/bash

function task156 {
	sum=1
	for (( i=10; i<=99; i++ ))
	do
		if [[ $(( $i % 3 )) -eq 0 ]] && [[ $(( $i % 5 )) -eq 0 ]]
		then
			sum=$(( $sum * $i ))
		fi
	done

	echo $sum
}

task156

#!/bin/bash

function task158 {
	sum=1
	for (( i=100; i<=999; i++ ))
	do
		if [[ $(( $i % 2 )) -ne 0 ]] && [[ $(( $i % 3 )) -ne 0 ]]
		then
			sum=$(( $sum * $i ))
		fi
	done

	echo $sum
}

task158

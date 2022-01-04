#!/bin/bash

function task159 {
	((sum=2**64))
	sum=1
	for (( i=100; i<=200; i++ ))
	do
		if [[ $(( $i % 3 )) -eq 1 ]] && [[ $(( $i % 4 )) -eq 2 ]]
		then
			sum=$(( $sum * $i ))
		fi
	done

	echo $sum
}

task159

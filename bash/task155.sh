#!/bin/bash

function task155 {
	sum=0
	for (( i=10; i<=99; i++ ))
	do
		if [[ $(( $i % 3 )) -eq 0 ]]
		then
			sum=$(( $sum + $i ))
		fi
	done

	echo $sum
}

task155

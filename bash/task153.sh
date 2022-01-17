#!/bin/bash

function task153 {
	sum=0
	for (( i=$2; i<=$1; i++ ))
	do
		if [[ $(( $i % $2 )) -eq 2 ]]
		then
			sum=$(( $sum +  $i ))
		fi
	done

	echo $sum
}

task153 10 3

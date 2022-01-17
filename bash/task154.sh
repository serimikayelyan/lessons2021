#!/bin/bash

function task154 {
	sum=1
	for (( i=$2; i<=$1; i++ ))
	do
		if [[ $(( $i % $2 )) -eq 3 ]]
		then
			sum=$(( $sum *  $i ))
		fi
	done

	echo $sum
}

task154 10 4

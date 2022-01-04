#!/bin/bash

function task157 {
	sum=0
	for (( i = 100; i <= 999; i++ ))
	do
		if [[ $i%5 -ne 0 ]]; then
			let sum=$sum+$i
		fi
	done
	echo $sum
}

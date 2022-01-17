#!/bin/bash

function task156 {
	mult=1
	for (( i = 10; i <= 99; i++ ))
	do
		if [[ $i%3 -eq 0 && $i%5 -eq 0 ]]; then
			let mult=$mult*$i
		fi
	done
	echo $mult
}

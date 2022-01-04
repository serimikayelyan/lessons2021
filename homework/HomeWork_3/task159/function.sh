#!/bin/bash

function task159 {
	mult=1
	for (( i = 100; i <= 999; i++ ))
	do
		if [[ $i%3 -eq 1 && $i%4 -eq 2 ]]; then
			let mult=$mult*$i
		fi
	done
	echo $mult
}

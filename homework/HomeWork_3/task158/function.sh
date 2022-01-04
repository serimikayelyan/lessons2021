#!/bin/bash

function task158 {
	mult=1
	for (( i = 100; i <= 999; i++ ))
	do
		if [[ $i%3 -ne 0 && $i%2 -ne 0 ]]; then
			let mult=$mult*$i
		fi
	done
	echo $mult
}

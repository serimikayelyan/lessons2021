#!/bin/bash

function task153 {
	if [[ ! $1 =~ ^[0-9]+$ || $# -eq 0 || $1 -lt 0 ]]; then
 		echo Smth get wrong
	else
		sum=0
		for (( i = 1; i <= $1; i++ ))
		do
			if [[ $1%$i -eq 2 ]]; then
				let sum=$sum+$i
			fi
		done
		echo $sum
	fi
}

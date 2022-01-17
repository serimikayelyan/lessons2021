#!/bin/bash

function task164 {
	if [[ ! $1 =~ ^[0-9]+$ || $# -eq 0 || $1 -lt 0 ]]; then
		echo Smth get wrong
	else
		for (( i = 100; i <= 999; i++ ))
		do
			j=`bc <<< "scale=0; sqrt($i)"`
			if [[ j -gt $1 ]]; then
				echo $i
				break
			fi
		done
	fi
}

#!/bin/bash

function task152 {
	if [[ ! $1 =~ ^[0-9]+$ || $# -eq 0 ||$1 -lt 0 ]]; then
		echo Smth get wrong	
	else
		mult=1
		for (( i = 1; i <= $1; i++ ))
		do
			if [[ $1%$i -eq 0 ]]; then
				let mult=$mult*$i
			fi
		done
		echo $mult
	fi
}

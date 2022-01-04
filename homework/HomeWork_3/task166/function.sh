#!/bin/bash
#not working
function task166 {
	if [[ ! $1 =~ ^[0-9]+$ || $# -eq 0 || $1 -lt 0 ]]; then
		echo Smth get wrong
	else
		for (( i = $1; i > 0; i /= 4 ))
		do
			if [[ $i -eq 1 ]]; then
				y=1
				break
			else
				y=0
		
			fi
		done
		echo $y
	fi
}

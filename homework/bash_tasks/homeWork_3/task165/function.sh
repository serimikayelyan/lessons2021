#!/bin/bash
#not working
function task165 {
	if [[ ! $1 =~ ^[0-9]+$ || $# -eq 0 || $1 -lt 0 ]]; then
		echo Smth get wrong
	else
		for (( i = $1; i > 0; i /= 3 ))
		do
			if [[ $i -eq 1 ]]; then
				t=true
				break
			else
				t=false
		
			fi
		done
		echo $t
	fi
}

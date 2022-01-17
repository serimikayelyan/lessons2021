#!/bin/bash

function task168 {
	if [[ ! $1 =~ ^[0-9]+$ || $# -eq 0 || $1 -lt 0 ]]; then
		echo Smth get wrong
	else
		for (( i = 2; i < $1; i++ ))
		do
			if [[ $1%$i -eq 0 ]]; then
				p=false
				break	
			else
				p=true		
			fi
		done
		echo $p
	fi
}

#!/bin/bash

function task169 {
	if [[ ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ || $# -lt 2 || $1 -lt 0 || $2 -lt 0 ]]; then
		echo Smth get wrong
	else
		for (( i = 2; i < ($1 + $2); i++ ))
		do
			if ! (( ($1 + $2) % $i )); then
				z=6
				break
			else
			       	z=5
			fi
		done
		echo $z
	fi
}

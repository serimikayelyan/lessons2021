# !/bin/bash

function calculate {
	if [[ ! $1 =~ ^[0-9]+$ || ! $3 =~ ^[0-9]+$ || $# -lt 3 ]]; then
		echo Smth get wrong
	elif [[ $2 == "+" ]]; then
   		sum=$(($1+$3))
		echo $sum
	elif [[ $2 == "-" ]]; then
		sub=$(($1-$3))
		echo $sub
	elif [[ $2 == "x" ]]; then
		mult=$(($1*$3))
		echo $mult
	elif [[ $2 == "/" && $3 -ne 0 ]]; then
		div=$(($1/$3))
		echo $div
	elif [[ $2 == "^" ]]; then
		deg=$(($1**$3))
		echo $deg
	fi
}

calculate $@

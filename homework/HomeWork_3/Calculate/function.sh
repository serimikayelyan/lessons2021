# !/bin/bash
#not completed
function calculate {
	if [[ ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ || $# -lt 3 ]]; then
		echo Smth get wrong
	elif [[ $3 == '+' ]]; then
   		sum=$(($1+$2))
		echo $sum
	elif [[ $3 == "-" ]]; then
		sub=$(($1-$2))
		echo $sub
	elif [[ $3 == '*' ]]; then
		mult=$(($1*$2))
		echo $mult
	elif [[ $3 == '/' && $2 -ne 0 ]]; then
		div=$(($1/$2))
		echo $div
	fi
}

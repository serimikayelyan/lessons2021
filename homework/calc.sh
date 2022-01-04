#!/bin/bash

function numberValidation {
	re='^[0-9]+$'
	if ! [[ $1 =~ $re ]] ; then
   		echo "error: Not a number" >&2; exit 1
	fi
}

echo -n "Number 1: "
read number1
numberValidation $number1

echo -n "Number 2: "
read number2
numberValidation $number2

echo -n "Operator(+ - x /): "
read operator
re='^[\+-x/]$'
if ! [[ $operator =~ $re ]]
then
   	echo "error: please insert +, -, x, or /" >&2; exit 1
fi

if [[ $operator == 'x' ]]
then
	answer=$(echo "$number1 * $number2" | bc)
else
	answer=$(echo "scale=2; $number1 $operator $number2" | bc)
fi


echo "Answer: $answer"


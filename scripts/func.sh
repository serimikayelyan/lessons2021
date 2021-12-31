#!/bin/bash

script_151 ()
{
    if [[ $a =~ ^[[:digit:]]+$ ]]; then	
	for ((i = $a; i > 0; i--)); do
			if (( $a % $i == 0 )); then
				res=$((res+=$i))
			fi
	done	
	echo "Answer to question 151 : $res"
    else
	    echo "Wrong attribution"
    fi
}


script_152 ()
{
	res=1
     if [[ $a =~ ^[[:digit:]]+$ ]]; then
	for ((i = $a; i > 0; i--)); do
		if (( $a % $i == 0 )); then
			res=$((res*=$i))
		fi
	done
	echo "Answer to question 152 : $res"	
     else
	     echo "Wrong attribution"
     fi
}



script_153 ()
{
	if [[ $a =~ ^[[:digit:]]+$ ]]; then
		for ((i = $a; i > 0; i--)); do
			if (( $a % $i == 2 )); then
				res=$((res+=$i))
			fi
		done
		echo "Answer to question 153 : $res"
	else
		echo "Wrong attribution"
	fi
}



script_154 ()
{
	res=1
	if [[ $a =~ ^[[:digit:]]+$ ]]; then
		for ((i = $a; i > 0; i--)); do
			if (( $a % $i == 3 )); then
				res=$((res*=$i))
			fi
		done
		echo "Answer to question 154 : $res"
	else
		echo "Wrong attribution"
	fi
}


script_155 () 
{
	for ((i = 99; i > 10; i--)); do
		if (( $i % 3 == 0 )); then
			res=$((res+=$i))
		fi
	done
	echo "Answer to question 155 : $res"
}


script_156 ()
{
	res=1
	for ((i = 99; i > 10; i--)); do
		if (( $i % 5 == 0 || $i % 3 == 0 )); then
			res=$((res*=$i))
		fi
	done
	echo "Answer to question 156 : $res"
}


script_157 ()
{
	for ((i = 999; i > 100; i--)); do
		if !(( $i % 5 == 0)); then
			res=$((res+=$i))
		fi
	done
	echo "Answer to question 157 : $res"
}


script_158 ()
{
	res=1
	for ((i = 999; i > 100; i--)); do
		if !(( $i % 3 == 0 || $i % 2 == 0 )); then
			res=$((res*=$i))
		fi
	done
	echo "Answer to question 158 : $res"
}


script_159 ()
{
	res=1
	for ((i = 861; i > 100; i--)); do
		if (( $i % 3 == 1 && $i % 4 == 2 )); then
			res=$((res*=$i))
		fi
	done
	echo "Answer to question 159 : $res"
}



script_168 ()
{
	if [[ $a =~ ^[[:digit:]]+$ ]]; then
		for ((i = $(($a -1)); i > 1; i--)); do
			if (( $a % $i == 0 )); then
				p="false"
				break
			else
				p="true"
			fi
		done
		echo "Answer to question 168 : $p"
	else
		echo "Wrong attribution"
	fi
}



script_169 ()
{
	if [[ $a =~ ^[[:digit:]]+$ && $b =~ ^[[:digit:]]+$ ]]; then

		sum=$(( $a + $b ))

		for ((i = $(($a + $b -1)); i > 1; i--)); do
			if (( $sum % $i == 0 )); then
				z=6
				break
			else
				z=5
			fi
		done
		echo "Answer to question 169 : $z"
	else
		echo "Wrong attribution"
	fi
}

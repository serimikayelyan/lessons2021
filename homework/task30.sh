#!/bin/bash

declare -i a
declare -i b
declare -i c

echo -n "Insert number 1 - "
read a
echo -n "Insert number 2 - "
read b
echo -n "Insert number 3 - "
read c
max=0
min=0

if [[ $a -ge $b ]] && [[ $a -ge $c ]] 
then  
	max=$a
elif [[ $b -ge $a ]] && [[ $b -ge $c ]]
then 
	max=$b 

elif [[ $c -ge $b ]] && [[ $c -ge $a ]]
then 
	max=$c

fi

if [[ $a -le $b ]] && [[ $a -le $c ]]
then 
	min=$a
elif [[ $b -le $a ]] && [[ $b -le $c ]]
then 
	min=$b
elif [[ $c -le $b ]] && [[ $c -le $a ]]
then 
	min=$c

fi

m=$( expr  $a + $b + $c - $min - $max ) 
echo $max, $m, $min

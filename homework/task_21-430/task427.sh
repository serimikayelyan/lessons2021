#!/bin/bash

read -p "k: " k
count=0
read -p "m: " m
arr=( $@ )
mek=1
if [[ $# -eq $(( $m * $m )) ]]; then
for (( y=0; y<$m; y++ )) ; do
    for (( x=0; x<$m; x++ )) ; do
	(( i= $y * $m + $x ))
	if [[ $x -gt $y && $(( ${arr[$i]} % $k )) -eq 0 ]]; then
	   (( mek *= ${arr[$i]} ))
	fi
    done
done
echo $mek
else 
     echo "give me $(( $m**2 )) numbers"
fi

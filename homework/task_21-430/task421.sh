#!/bin/bash

read -p "k: " k
count=0
read -p "m: " m
arr=( $@ )

for (( y=0; y<$m; y++ )) ; do
    for (( x=0; x<$m; x++ )) ; do
	(( i= $y * $m + $x ))
	if [[ $y -gt $x && $(( ${arr[$i]} % $k )) -eq 0 ]]; then
		(( count++ ))
	fi
    done
done
echo $count

# 1m
# 2m 2m+1
# 3m 3m+1 3m+2
# 
#        0         1         2         3
#  [ [a b c d] [e f g h] [i j k l] [m n o p] ]
# {
#  [a b c d]
#  [e f g h]
#  [i j k l]
#  [m n o p]
# }


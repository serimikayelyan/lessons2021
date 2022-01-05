#!/bin/bash

n=$1

for (( i=2; i<$1; i++ ))
do
    if [[ $(( $n % $i)) -eq 0 ]]; then
	    (( n *= $i ))
fi
done
echo $n

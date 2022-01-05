#!/bin/bash

n=$1
for (( i=1; i<$1; i++ ))
do
    if [[ $(( $1 % $i )) ]]; then
	(( $1 += $i  ))
    fi
done
echo $n

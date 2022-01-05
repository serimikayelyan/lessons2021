#!/bin/bash

n=$1
p="true"

for (( i=2; i<$n; i++ ))
do
    if [[ $(( $n % $i )) -eq 0 ]]; then
	p="false"
	break
    fi
done
echo $p

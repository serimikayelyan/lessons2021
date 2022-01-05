#!/bin/bash

for (( i=100; i<1000; i++ ))
do
    x=` bc <<< " scale=0; sqrt( $i * 16 ) " `
    if [[ $(( $x * $x )) -eq $(( $i * 16 )) ]]; then
	echo $i
	break
    fi
done

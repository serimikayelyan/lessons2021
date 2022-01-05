#!/bin/bash

for (( i=1000; i<10000; i++ ))
do
    x=` bc <<< " scale=0; sqrt( $i * 26 ) " `
    if [[ $(( $x * $x )) -eq $(( $i * 26 )) ]]; then
	echo $i
	break
    fi
done

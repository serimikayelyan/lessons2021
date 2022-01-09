#!/bin/bash

taserkus=12
for (( i=13; i<100; i++ ))
do
	if ! (( $i % 3 )); then
	    (( taserkus += $i ))
    fi
done
echo $taserkus

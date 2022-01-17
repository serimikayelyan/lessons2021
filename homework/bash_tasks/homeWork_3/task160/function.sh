#!/bin/bash

function task160 {
	for (( i = 100; i <= 999; i++ ))
	do
		j=`bc <<< "scale=0; sqrt($i * 16)"`
		if [[ $(($j * $j)) -eq $(($i * 16)) ]]; then
		    echo $i
		    break
		fi
    	done
}

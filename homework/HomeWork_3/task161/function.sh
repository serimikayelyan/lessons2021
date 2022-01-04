#!/bin/bash

function task161 {
	for (( i = 1000; i <= 9999; i++ ))
	do
		j=`bc <<< "scale=0; sqrt($i * 26)"`
		if [[ $(($j * $j)) -eq $(($i * 26)) ]]; then
		    echo $i
		    break
		fi
    	done
}

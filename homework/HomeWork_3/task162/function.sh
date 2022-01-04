#!/bin/bash

function task162 {
	for (( i = 9999; i >= 1000; i-- ))
	do
		j=`bc <<< "scale=0; sqrt($i * 14)"`
		if [[ $(($j * $j)) -eq $(($i * 14)) ]]; then
			echo $i
	      		break	 
		fi
    	done
}

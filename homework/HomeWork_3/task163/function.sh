#!/bin/bash

function task163 {
	for (( i = 9999; i >= 1000; i-- ))
	do
		j=`bc <<< "scale=0; sqrt($i * 18)"`
		if [[ $(($j * $j)) -eq $(($i * 18)) ]]; then
			echo $i
	      		break	 
		fi
    	done
}

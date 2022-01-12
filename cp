#!/bin/bash

count=0

command_cp ()
{	
	if [[ -f $1 ]]; then
 		if [[ -n $2 ]]; then
			cat $1 > $2
		fi	
	fi

	for i in $1
	do
	IFS='/'
	arr+=($i)
		for j in ${arr[@]}
		do	
			if [[ -d $j ]]; then
				cd $j
				command_cp $j
			fi
		done
	done

}


command_cp $@

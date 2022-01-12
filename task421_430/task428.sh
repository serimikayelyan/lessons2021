#!/bin/bash
declare -A matrix
m=$1
count=0
var=0
for (( i=0; i<$m; i++ ))
 do
	for (( j=0; j<$m; j++ ))
	do
	      matrix[$i,$j]=$(($i+$j))
	      var=${matrix[$j,$j]}
	      if [[ $var -eq 0 && $(($i+$j)) -ge $(($m-1)) ]]
		    then
			    count=$(($count+1))
	      fi
	      echo -n ${matrix[$i,$j]}
	   done
	   echo
   done
   echo $count

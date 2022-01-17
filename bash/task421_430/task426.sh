#!/bin/bash
declare -A arr
m=$1
sum=0
var=0
for (( i=0; i <$m; i++ ))
 do
	 for (( j=0; j<$m; j++ ))
	  do
		  arr[$i,$j]=$(($i+$j))
		  var=${arr[$i,$j]}
		  if [[ $var%2 -eq 0 && $(($i+$j))<=$(($m-1)) ]] 
		  then
			  
			  sum=$(($sum+$var))
		fi
		echo -n  "${arr[$i,$j]}"
	done
	echo ""
done
	
echo $sum
                          

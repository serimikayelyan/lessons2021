#! /bin/bash


arr=(1 2 3 4 5 6 12 45 8 52 16 82 53)
a=0
for i in ${!arr[@]}
do  
	if [[ $i -ne 0 ]]
	then
	      if [[ $i%$1 -eq 0 ]]
	 	then
		a=$(($a + 1))
	      fi
	fi
done
	echo $a


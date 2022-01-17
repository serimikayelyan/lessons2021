#!/bin/bash
arr=($@)
sum=0
count=0
if [[ ${#arr[@]} -eq 0 ]]
 then
	 echo "input arguments after filename"
	 exit
fi
for i in ${arr[@]}
do
	if ! [[ $i =~ ^[[:digit:]]+$ ]]
	then
		echo "input numbers"
		exit
	fi
	if [[ $i%2 -eq 0 ]]
	  then
		  continue
	  else

	   
		   count=$(($count+1))
		   sq=$i*$i
                   sum=$(($sum+$sq))
                   square_root=`echo "sqrt($sum)" | bc`
        fi
done
echo "Migin erk=$square_root"
	


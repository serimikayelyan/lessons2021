#!/bin/bash
declare -A matrix
num_rows=$1
num_columns=$1

for ((i=0;i<num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
     matrix[$i,$j]=$(($i+$j)): 
     
     if [[ ${matrix[$i,$j]}%5 -eq 0 ]]; then
		    sum=$(($sum + $val))
                    num=$(($num+1))
	    

             fi
     done
   # echo  -n ${matrix[$i,$j]} "  "
    done
    #  echo
bc <<< 'scale=2; sum/num'
#done
#bc <<< 'scale=2; sum/num'
#if [[ ${matrix[$i,$j]}%5 -eq 0 ]]; then
 #                       sum= $(($sum + ${matrix[$i,$j]}))
  #                      num= $(($num+1))
#fi
#bc <<< 'scale=2; $sum/$num'
#ave=0
#for ((i=0;i<num_rows;i++)) do
#	for ((j=1;j<num_colomns;j++)) do
#		if [[ ${matrix[$i,$j]} %5 -eq 0 ]]; then
#			sum= $(($sum + ${matrix[$i,$j]}))
#                        num= $(($num+1))
#		fi
#	done
#done
#bc <<< 'scale=2; sum/num'


#	if [[ $sum=0 ]]; then
#		echo " there are no multiples of 5 in the array "
# else
#	ave=$(($sum/$num)) 
 #       echo $ave
#	fi
 
#f1="%$((${#num_rows}+1))s"
#f2=" %9s"

#printf "$f1" ''
#for ((i=1;i<=num_rows;i++)) do
 #   printf "$f2" $i
#done
#echo

#for ((j=1;j<=num_columns;j++)) do
 #   printf "$f1" $j
   # for ((i=1;i<=num_rows;i++)) do
    #    printf ${matrix[$i,$j]}
   # done
   # echo
#done"$f2"

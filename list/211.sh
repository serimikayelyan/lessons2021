#!/bin/bash

sum=0
b=0
array=( 5 2 -9 3 -7 6 -5 )

for i in ${array[@]}
do
       if [[ $i -gt 0 ]]
         then
          sum=$(($sum+$i))
          b=$(($b+1))
       fi
done
echo $(($sum/$b))

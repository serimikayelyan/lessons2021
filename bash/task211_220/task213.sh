#!/bin/bash
arr=(-9 8 45 78 -96 -32 2 1 0 6 9 -8)
count=0
sum=0

for i in ${arr[@]}
 do
         if [[ $i -lt 0 ]]
           then
                   count=$(($count + 1))
                   sq=$i*$i
                   sum=$(($sum+$sq))
                   square_root=`echo "sqrt($sum)" | bc`

         fi
done
echo "Mijin erkrachapakan = $(($square_root/$count)) "

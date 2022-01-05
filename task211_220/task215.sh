#!/bin/bash
arr=(1 5 8 9 6 3 2 7 2 78)
sum=0
for i in ${!arr[@]}
do
  for j in ${#arr[@]}
   do
           if [[ $i -eq 0 ]]
             then
                     continue
           fi

            if [[ $i%2 -eq 0 ]]
              then
                     sum=$(($sum+$j))
            fi
   done
done
echo $sum


#!/bin/bash
arr=(1 5 8 9 6 3 2 7 4 78)
p=1
for i in ${!arr[@]}
do
        if [[ $i -eq 0 ]]
         then
                 continue
        fi
        if [[ $i%2 -eq 0 ]]
         then
                 p=$(($p*${arr[i]}))

        fi
done
echo $p

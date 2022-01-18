#!/bin/bash

read -p "text : " text
read -p "number: " number
abc=()
count=0
nt=""
nch=""
for i in {a..z}
do
   abc[$count]=$i
   ((count++))
done
echo "len: ${text}"


for ((i=0; i<${#text}; i++))
do
   index=0
   if [[ ! "${abc[*]}" =~ "${text:$i:1}" ]]; then
         nt=${new_txt}${text:$i:1}
   fi
	for j in ${!abc[@]}
	do

           if [[ ${abc[$j]} == ${text:$i:1} ]]; then
           if [[ $(($index+$number)) -gt ${#abc[@]} ]]; then
            ni=$(($index+$number -${#abc[@]}))
           else
            ni=$(($index+$number))
           fi

            nch=${abc[$ni]}
            nt=${nt}${abc[$ni]}
           break

           fi
           ((index++))


        done
done

echo "new_text : $nt"

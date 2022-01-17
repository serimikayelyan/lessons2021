#!/bin/bash

#text="cragravorman dajan xndirner"

read -p "text : " text
read -p "number: " number
abc=() 
count=0
new_text=""
new_char=""
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
         new_text=${new_txt}${text:$i:1}
   fi
	for j in ${!abc[@]}
	do
      
           if [[ ${abc[$j]} == ${text:$i:1} ]]; then 
           if [[ $(($index+$number)) -gt ${#abc[@]} ]]; then
            new_index=$(($index+$number -${#abc[@]}))
           else
            new_index=$(($index+$number))
           fi

            new_char=${abc[$new_indeex]}
            new_text=${new_text}${abc[$new_index]}
           break
         
           fi
           ((index++))

         
        done
done

echo "new_text : $new_text"

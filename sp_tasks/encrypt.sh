#!/bin/bash
read -p "text :" text
read -p "number :" number
alfa=()
conut=0
new_text=""
newindex=""

for i in {a..z}
  do
	  alfa[$count]=$i
	  ((count++))
 done
 echo ${alfa[@]}

 for (( i=0; i<${#text}; i++ ))
   do
	   index=0
      if [[ ! ${alfa[*]} =~ ${text:$i:1} ]]
	  then
               new_text=${new_text}${text:$i:1}
      fi
  for j in ${!alfa[@]}
     do
       if [[ ${alfa[$j]} == ${text:$i:1} ]]
	   then
		   if [[ $(($index+$number)) -gt ${#alfa[@]} ]]
		   then
			   newindex=$(($index+$number-${#alfa[@]}))
                   else
			   newindex=$(($index+$number))

                    fi
		    char=${alfa[$newindex]}
                    new_text=${new_text}${char}
                    break
                  fi
                  ((index++))

            done
    done
    echo $new_text

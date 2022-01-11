#!/bin/bash

read -p "Enter the text you want to encode: " text
read -p "Encryption number: " number
textnew=''
charnew=''
count=0
alfa=()

for i in {a..z}; do
	alfa[$count]=$i
	((count++))
done
echo "Quantity: ${#text}"
echo "The alphabet a b c d e f g h i j k l m n o p q r s t u v w x y z: ${#alfa[@]}"

for (( i=0; i<${#text}; i++ )); do
    index=0
    if [[ ! "${alfa[*]}" =~ "${text:$i:1}" ]]; then
		textnew=${textnew}${text:$i:1}
	fi
  for j in ${!alfa[@]}; do
   	if [[ ${alfa[$j]} == ${text:$i:1} ]]; then
		if [[ $(($index+$number)) -ge ${#alfa[@]} ]]; then
            index1=$(($index+$number-${#alfa[@]}))
		else
		    index1=$(($index+$number))
		fi
      charnew=${alfa[$index1]}
	  textnew=${textnew}${alfa[$index1]}
      break
    fi
    ((index++))
  done
done

echo "This is the encrypted text: $textnew"

#!/bin/bash

read -p "text : " text
read -p "number: " number

alphabet=() 
count=0
newText=""
char=""

for i in {a..z}
do
	alphabet[$count]=$i
	((count++))
done

echo "Input: ${text}"
if [[ "$1" == "encrypt" ]]; then
	for ((i=0; i<${#text}; i++))
	do 
		index=0
		if [[ ! "${alphabet[*]}" =~ "${text:$i:1}" ]]; then
			newText=${newText}${text:$i:1}
		fi
		for j in ${!alphabet[@]}
		do     
			if [[ ${alphabet[$j]} == ${text:$i:1} ]]; then 
				if [[ $(($index+$number)) -ge ${#alphabet[@]} ]]; then
					newIndex=$(($index + $number - ${#alphabet[@]}))
				else
					newIndex=$(($index + $number))
				fi
				char=${alphabet[$newIndex]}
				newText=${newText}${alphabet[$newIndex]}
				break         
			fi
			((index++))      
		done
	done
elif [[ "$1" == "decrypt" ]]; then
	for ((i=0; i<${#text}; i++))
	do 
		index=0
		if [[ ! "${alphabet[*]}" =~ "${text:$i:1}" ]]; then
			newText=${newText}${text:$i:1}
		fi
		for j in ${!alphabet[@]}
		do     
			if [[ ${alphabet[$j]} == ${text:$i:1} ]]; then 
				if [[ $(($index-$number)) -lt 0 ]]; then
					newIndex=$(($index - $number + ${#alphabet[@]}))
				else
					newIndex=$(($index - $number))
				fi
				char=${alphabet[$newIndex]}
				newText=${newText}${alphabet[$newIndex]}
				break         
			fi
			((index++))      
		done
	done

fi

echo "Output : $newText"

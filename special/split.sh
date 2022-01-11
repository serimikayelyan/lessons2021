#!/bin/bash
correcting ()
{
echo "input text"
read text
echo "input character to split text"
read split
if [[ ! $text ]] || [[ ! $split ]]; then
	echo "!!!!  imput text and/or split character !!!!!!"
	correcting
fi
if [[ ${#text} -eq 1 || ${#split} -gt 1 ]];then
	echo "   !!!!  input correct values !!!! "
correcting
fi
}
correcting
IFS="$split"
read -ra spliting_text <<< "$text"
for i in "${spliting_text[@]}"; do
	((num++))
	echo $num  $i
done


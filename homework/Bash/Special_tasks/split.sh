#!/bin/bash
echo "type the text"
read text
echo "type the char"
read char
IFS="$char"
read -a starr <<< "$text"
echo "There are ${#starr[*]} words in the text."
for val in  "${starr[@]}";
do
        printf "$val\n"
done



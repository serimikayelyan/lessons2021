#!/bin/bash
echo "type the word"
read text
echo "type the syllable"
read syllable
if [[ $text == *"$syllable"* ]]  
 then                
  echo "True"
else
echo "False"
fi

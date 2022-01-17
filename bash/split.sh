#!/bin/bash
read txt
IFS=' ' 
read -ra arr <<< $txt
for i in "${arr[@]}"; do 
    echo "$i"
done
   

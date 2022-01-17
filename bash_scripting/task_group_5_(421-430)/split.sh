#!/bin/bash

read -p "delimiter: " delimiter
read -p "string: " string

readarray -d $delimiter -t out <<< $string
echo Using readarray: ${out[@]}
echo Using replacement: ${string//"$delimiter"/" "}

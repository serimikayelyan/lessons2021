#!/bin/bash

#########################################################
# If you see this, than I forgot to add comments. Sorry #
#########################################################

declare -A char_to_int
declare -A int_to_char

char_count=0

function fill_char_info
{
    local counter=0

    for i in {a..z}; do
	char_to_int[$i]=$counter
	int_to_char[$counter]=$i
	((counter++))
    done

    ((char_count=$counter + 1))
}

function encrypt
{
    read -p "Input text: " text
    read -p "Input key: " key

    text=$1
    key=$2

    local encrypted_text=""

    #loop vars
    local current_char
    local current_char_int
    local enc_char_int
    local enc_char

    for ((i=0;i<${#text};i++)); do
	current_char=${text:$i:1}

	if [[ ${int_to_char[*]} =~ " $current_char " ]]; then
	    current_char_int=${char_to_int[$current_char]}
	    enc_char_int=$((($current_char_int + $key) % $char_count))
	    enc_char=${int_to_char[$enc_char_int]}
	else
	    enc_char=$current_char
	fi

	encrypted_text+=$enc_char
    done

    echo "$encrypted_text"
}

function decrypt
{
    read -p "Input text: " text
    read -p "Input key: " key

    text=$1
    key=$2
}
fill_char_info
encrypt

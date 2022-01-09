#!/bin/bash

#########################################################
# If you see this, than I forgot to add comments. Sorry #
#########################################################

declare -A char_to_int
declare -A int_to_char

# char_to_int = [ "a": 0,
#		  "b": 1,
#		  "c"; 2, ...]

char_count=0

# Fills "char_to_int"(keys are characters and values are numbers) and "int_to_char"(oposite of "char_to_int")
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

#encrypts given text, duh
function encrypt
{
    if [[ $# -eq 0 ]]; then
	read -p "Input text: " text
	read -p "Input key: " key
    else
    	text=$1
    	key=$2
    fi

    if [[ ! $key ]]; then
        echo No key
        return 1
    elif [[ ! $key =~ ^[-+0-9]+$ ]]; then
        echo $key is not a number
        return 2
    fi

    [[ ${#char_to_int} -eq 0 ]] && fill_char_info
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
	    [[ $enc_char_int -lt 0 ]] && ((enc_char_int+=$char_count - 1))
	    enc_char=${int_to_char[$enc_char_int]}
	else
	    enc_char=$current_char
	fi

	encrypted_text+=$enc_char
    done

    echo "$encrypted_text"
}

#Yeah...
function decrypt
{
    if [[ $# -eq 0 ]]; then
	read -p "Input text: " text
	read -p "Encryption key: " key
    else
    	text=$1
    	key=$2
    fi

    if [[ ! $key ]]; then
	echo No key
	return 1
    elif [[ ! $key =~ ^[+-0-9]+$ ]]; then
	echo $key is not a number
	return 2
    fi
    [[ ${#char_to_int} -eq 0 ]] && fill_char_info
    encrypt "$text" $(($key * -1))
}
encrypt

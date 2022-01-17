#!/bin/bash

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

    char_count=$counter
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
	current_char_lower=`tr A-Z a-z <<< $current_char`

	if [[ ${char_to_int[$current_char_lower]} ]]; then
	    current_char_int=${char_to_int[$current_char_lower]}
	    enc_char_int=$(($current_char_int + $key))
	    [[ $enc_char_int -lt 0 ]] && ((enc_char_int+=$char_count))
	    ((enc_char_int%=$char_count))
	    enc_char=${int_to_char[$enc_char_int]}
	    if [[ $current_char != $current_char_lower ]]; then
		enc_char=`tr a-z A-Z <<< $enc_char`
	    fi
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
    elif [[ ! $key =~ ^[+-]?[0-9]+$ ]]; then
	echo $key is not a number
	return 2
    fi
    [[ ${#char_to_int} -eq 0 ]] && fill_char_info
    encrypt "$text" $(($key * -1))
}

function getPossibleDecryptions
{ 
    if [[ $# -eq 0 ]]; then
	read -p "Input text: " text
    else
    	text=$1
    fi

    if [[ ! $text ]]; then
	echo no text
	return 3
    fi

    [[ ${#char_to_int} -eq 0 ]] && fill_char_info
    for ((i=1;i<$char_count;i++)); do
	val=`decrypt "$text" $i`
	if [[ $? != 1 && $? != 2 ]]; then
	    echo ">============---------"
	    echo Key $i:
	    echo "       $val"
	    echo ">============---------"
	else
	    echo $val
	fi
    done
}

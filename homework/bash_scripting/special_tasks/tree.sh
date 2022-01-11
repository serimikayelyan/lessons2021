#!/bin/bash

asked_for_help=false

# special connecting chars: ├ ─ │ └

function repeat_char
{
	local str=${2:-" "}
	local amount=$1
	out_str=""
	
	if [[ ! $amount ]]; then
	    echo $str
	    return 1
        elif [[ ! $amount =~ ^[0-9]+$ ]]; then
	    echo $str
	    return 2
	fi
	
	for ((i=0;i<$(($amount - 1));i++)); do
	    out_str+=$str
        done

	echo "$out_str"
}

function checkforhelp
{
    input=" $1 "

    if [[ $input =~ " --help " || $input =~ " -h " ]]; then
	echo "$0 [absolute/relative path]"
	asked_for_help=true
    fi
}

function recursive_get
{
    local starting_point=$1
    local ident_n=${2:-1}
    local support_ident=${3:-""}
    local ident

    local files=(`ls $starting_point`)

    #for f in ${files[@]}; do
    #    echo "$ident$f"
    #    if [[ -d $starting_point/$f ]]; then
    #    	recursive_get "$starting_point/$f" "$(( ${#f} + $ident_n ))"
    #    fi
    #done

    local i
    local support_me
    for ((i=0; i<${#files[@]}; i++)); do
	f=${files[$i]}
	if [[ $i == $((${#files[@]} - 1)) ]]; then
	    ident=`repeat_char $(($ident_n - ${#support_ident}))`"└─ "
	    support_me=""
	else
	    ident=`repeat_char $(($ident_n - ${#support_ident}))`"├─ "
	    support_me=`repeat_char $(($ident_n - ${#support_ident}))`"│ "
	fi
	echo "$support_ident$ident$f" 
	if [[ -d $starting_point/$f ]]; then
		recursive_get "$starting_point/$f" "$(( 3 + $ident_n ))" "$support_ident$support_me"
	fi
    done
}


function main
{
    starting_point=$1

    file_found=()

    if [[ ${#starting_point} -eq 0 ]]; then
	echo No starting point is given "(use --help for more info)"
        return 1
    fi
    
    if [[ ! ${starting_point[0]} =~ ^[/~] ]]; then
        starting_point="$PWD/$starting_point"
	if [[ ! -e $starting_point ]]; then
	    echo \"$starting_point\" does not exist
	    return 2
	fi
    fi

    echo "."
    recursive_get "$starting_point"
}

checkforhelp "$*"
if [[ $asked_for_help == false ]]; then
    main "$1"
fi

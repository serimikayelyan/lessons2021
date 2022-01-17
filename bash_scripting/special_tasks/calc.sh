#!/bin/bash

# INFO: This code is not optimized and will never be, because I'm too lazy... Don't make me do that, please.
echo "DISCLAIMER: Calculations will not be acurate because bash primarily works with intagers."
echo -e "Supported operators:\n \"+\" - sum\n \"-\" - difference\n \"*\" - multiplication\n \"/\" - division\n \"^\" - exponentiation\n \"!\"  - factorial"
echo " \"()\" are supported as well."
echo

operators=("+" "\*" "/" "^" "!" "-")

function factorial
{
    local base=$1   
    local fact=1

    for ((i=2;i<=$base;i++)); do
	((fact*=$i))
    done

    echo $fact
}

function pow
{
    local base=$1
    local exponent=$2
    local power=1

    if [[ $exponent -lt 0 ]]; then
	for ((i=$exponent;i<0;i++)); do
	    ((power/=$base))
	done
    else
        for ((i=0;i<$exponent;i++)); do
            ((power*=$base))
        done
    fi
    
    echo $power
}

#Seting spaces between operators and numbers
function setSpaces
{
    local expression="$1"
    
    signs=(${operators[@]} "(" ")")

    for ((i=0;i<${#signs[@]};i++)); do
	currentSign=${signs[$i]}
	expression=${expression//"$currentSign"/" $currentSign "}
    done

    echo "$expression"
}

#Checking for unknown characters
function check
{
    local input="`setSpaces "$1"`"

    if [[ ! $input =~ ^[0-9\ ( )${operators[*]}]+$ ]]; then
        echo 1
    elif [[ ! $input =~ ^[\ ]*[-+0-9\(] ]]; then
	echo 2
    else
	input=(${input[@]})
	local prev_elem=$input

	for ((i=1;i<${#input[@]};i++)); do 
	    #if [[ $prev_elem =~ ^[${operators[*]}]+$ && ${input[$i]} =~ ^[${operators[*]}]+$ && ( ${input[$(($i+1))]} =~ ^[${operators[*]}]+$ || ! ${input[$i]} =~ [+-] ) ]]; then
	    if [[ ${operators[*]} =~ $prev_elem && ${operators[*]} =~ ${input[$i]} && ( ${operators[*]} =~ ${input[$(($i+1))]} || ! ${input[$i]} =~ [+-] ) && $prev_elem != "!" ]]; then
		echo 3
		return
	    fi
	    prev_elem=${input[$i]}
	done

        echo 0
    fi
}

#Sets spaces, and joins [+-] signs if needed
function setUp
{
    local expression="$1"
    expression=(`setSpaces "${expression[*]}"`)
   
    #If expression starts wiht [+-] join it with next number 
    if [[ $expression =~ [+-] ]]; then
	expression[0]+=${expression[1]}
	unset expression[1]
	expression=(${expression[@]})
	prev_elem=$expression
    fi

    #Concatenates [+-] signs with next number, if previous char is an operator
    local prev_elem=$expression
    for ((i=1;i<((${#expression[@]} - 1));i++)); do
	if [[ ${expression[$i]} =~ [+-] && ${operators[*]} =~ $prev_elem ]]; then
	    expression[$i]+=${expression[$(($i + 1))]}
	    unset expression[$(($i + 1))]
	    expression=(${expression[@]})
	fi
	prev_elem=${expression[$i]}
    done

    echo "${expression[*]}"
}

#Get bracket count
function bracketCount
{
    local expression=($1)
    
    local o_count=0
    local c_count=0

    for i in ${expression[@]}; do
	if [[ $i == "(" ]]; then
	    ((o_count+=1))
	elif [[ $i == ")" ]]; then
	    ((c_count+=1))
	fi
    done

    echo "$o_count $c_count"
}

#Get bracket "coords"
function findBrackets
{
    local expression=($1)
    local return_lowest=${2:-0}
    local pairIndexes=()

    local indexes=()
    for i in ${!expression[@]}; do
	if [[ ${expression[$i]} == "(" ]]; then
	    indexes+=("$i")
	elif [[ ${expression[$i]} == ")" ]]; then
	    indexes[-1]+=" $i"
	    pairIndexes+=("${indexes[-1]}")
	    unset indexes[-1]
	    [[ $return_lowest ]] && break
	fi
    done

    echo ${pairIndexes[*]}
}

#Solves expression without prioritzing multiplications and etc.
function dumbSolver
{
    local expression=($1)
    local current_value=${expression[0]}
    local current_op="none"

    for ((i=1;i<${#expression[@]};i++)); do
	if [[ ! ${expression[$i]} =~ [0-9] && ${expression[$i]} != "!" ]]; then
	    current_op="${expression[$i]}"
	    continue
	elif [[ ${expression[$i]} == "!" ]]; then
	    current_op="${expression[$i]}"
	    current_value=`factorial $current_value`
	    continue
	fi

	case $current_op in
	    "+") ((current_value+=${expression[$i]}));;
	    "-") ((current_value-=${expression[$i]}));; 
	    "\*") ((current_value*=${expression[$i]}));;
	    "/") ((current_value/=${expression[$i]}));;
	    "^") current_value=`pow $current_value ${expression[$i]}`;;
	    "!") echo "Wrong usage of !"
	esac
    done

    echo $current_value
}

#Solves each bracket
function solveBrackets
{
    local expression=($1)

    if [[ ${expression[*]} =~ '(' ]]; then
	local bracket_count=(`bracketCount "${expression[*]}"`)
	
	if [[ ! ${bracket_count[0]} -eq ${bracket_count[1]} ]]; then
	    echo "Single bracket found!"
	    return 2
	fi

	# Getting all bracket expression seperated
	for ((i=0;i<$bracket_count;i++)); do
	    local indexes=(`findBrackets "${expression[*]}" 1`)

	    local o_bracket=${indexes[0]}
	    local c_bracket=${indexes[1]}
	    local length=$(($c_bracket - $o_bracket - 1))
	    
	    local cutedExp="${expression[@]:$(($o_bracket + 1)):$length}"

	    local value=`solvePrioritized "${cutedExp[*]}"`

	    expression=(${expression[@]:0:$o_bracket} $value ${expression[@]:(($c_bracket + 1)):${#expression[@]}})
	done
    fi

    echo ${expression[*]}
}

#Prioritizes multiplication, factorial, etc.
function solvePrioritized
{
    local expression=($1)
    
    if [[ ${expression[*]} =~ "!" ]]; then
	for ((i=((${#expression[@]} - 1));i>=0;i--)); do
	    if [[ ${expression[$i]} == "!" ]]; then
		local cuted=(${expression[@]:(($i - 1)):2})
		local result=`dumbSolver "${cuted[*]}"`
		expression=(${expression[@]:0:(($i - 1))} ${result} ${expression[@]:(($i + 1)):${#expression[@]}})
	    fi
	done
    fi
    if [[ ${expression[*]} =~ "^" ]]; then
        for ((i=((${#expression[@]} - 1));i>=0;i--)); do
	    if [[ ${expression[$i]} == "^" ]]; then
		local cuted=(${expression[@]:(($i - 1)):3})
		local result=`dumbSolver "${cuted[*]}"`
		expression=(${expression[@]:0:(($i - 1))} ${result} ${expression[@]:(($i + 2)):${#expression[@]}})
	    fi
	done
    fi
    if [[ ${expression[*]} =~ [/\*] ]]; then
	for ((i=((${#expression[@]} - 1));i>=0;i--)); do
	    if [[ ${expression[$i]} =~ [/\*] ]]; then
		local cuted=(${expression[@]:(($i - 1)):3})
		if [[ ${cuted[1]} == "/" && ${cuted[-1]} -eq 0 ]]; then
		    echo Division by 0!
		    return 4
		fi
		local result=`dumbSolver "${cuted[*]}"`
		expression=(${expression[@]:0:(($i - 1))} ${result} ${expression[@]:(($i + 2)):${#expression[@]}})
	    fi
	done
    fi

    echo `dumbSolver "${expression[*]}"`
}

function solver
{
    local expression=($1)

    expression=(`solveBrackets "${expression[*]}"`)
    local result=`solvePrioritized "${expression[*]}"`

    echo $result 
}

function main
{

    local looping=0

    if [[ ${*:-""} ]]; then
	local input="$1"
    else
	echo "(Write "loop" to enter 'loop mode'. <Ctrl> + <C> - to quit.)"
	read -p "Write the expression: " input
    fi

    if [[ $input =~ ^[L|l][O|o][O|o][P|p]$ ]]; then
	looping=1
	echo --- Looping ---
	echo
    fi

    while true; do
	(( $looping )) && read -p "Write the expression: " input
	input=${input//"*"/"\*"}

	local check_output=`check "$input"`
    	if [[ $check_output -eq 1 ]]; then
    	    echo Unknown character in expression.
	    echo
	    (( $looping )) && continue
	    return 1
    	elif [[ $check_output -eq 2 ]]; then
    	    echo Expression starting with operator
	    echo
	    (( $looping )) && continue
	    return 2
    	elif [[ $check_output -eq 3 ]]; then
	    echo Operators wrong useage
	    echo
	    (( $looping )) && continue
	    return 3
    	fi

    	local expression=`setUp "$input"`

    	local result=`solver "${expression[*]}"`

    	echo $result
	echo

	(( ! $looping )) && break
    done
}
[[ $# -gt 1 ]] && echo "Use \"\" next time. (Main reason: '*' does this:" * ")" && return 3 

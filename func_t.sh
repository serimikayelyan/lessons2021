#!/bin/bash
#tasks 21-30
 
task_21 () {


if [[ $1 -gt $2 && $1 -gt $3 ]]
then 

    echo ""$1" -n amenamecn tivn e" 

elif [[ $2  -gt $1 && $2 -gt $3 ]]
then 

    echo ""$2" amenamec tivn e"

else 
 

    echo ""$3" amenamecn e"
fi

}

task_21 "$1" "$2" "$3" 

task_22 () {

if [[ $1 -lt $2 && $1 -lt $3 ]]
then 
    echo ""$1" amenapoqrn e"
elif [[ $2 -lt $1 && $2 -lt $3 ]]
then
    echo ""$2" amenapoqrn  e"
else 
    echo ""$3" amenapoqrn e" 
fi
}

task_22 "$1" "$2" "$3"

task_23 () {
if [[ $1 -eq 1 || $2 -eq 1 || $3 -eq 1 ]]
then
    echo "true"
else 
    echo "false"
fi

}
task_23 "$1" "$2" "$3" 

task_24 () {
if [[ $1 -eq 2 && $2 -eq 2 || $2 -eq 2 && $3 -eq 2 || $1 -eq 2 && $3 -eq	2 ]]
then 
    echo "true"

else 
    echo "false"
fi
}
task_24 "$1" "$2" "$3"


task_25 () {

a=$(( $1 + $2 ))
b=$(( $2 + $3 ))
c=$(( $1 + $3 ))

if [[ $a -gt $3 && $b -gt $1 && $c -gt $2 ]]
then 
    echo "y=1"
else 
    echo "y=2"
fi

}
task_25 "$1" "$2" "$3"


task_26 () {

if [[ $1%2 -eq 0 || $2%2 -eq 0 || $3%2 -eq 0 ]]
then 
    echo "mek"
else 
    echo "erku"
fi

}

task_26 "$1" "$2" "$3"


task_27 () {

if [[ $(( $2 - $1 )) -eq $(( $3 - $2 )) ]]
then
    echo "true"
else
    echo "false"
fi

}
task_27 "$1" "$2" "$3"


task_28 () {

if [[ $(( $2 / $1 )) -eq $(( $3 / $2 )) ]]
then
    echo "true"
else
    echo "false"
fi

}
task_28 "$1" "$2" "$3"

task_29 () {
if [[ $1 -le $2 && $1 -le $3 && $2 -le $3 ]]
then 
    echo "$1 $2 $3"
elif [[ $1 -le $2 && $1 -le $3 && $3 -le $2 ]]
then
    echo "$1 $3 $2"
elif [[ $2 -le $1 && $2 -le $3 && $1 -le $3 ]]
then
    echo "$2 $1 $3"
elif [[ $2 -le $1 && $2 -le $3 && $3 -le $1 ]]
then
    echo "$2 $3 $1"
elif [[ $3 -le $1 && $3 -le $2 && $1 -le $2 ]]
then
    echo "$3 $1 $2"
else
    echo "$3 $2 $1"
fi
}
task_29 "$1" "$2" "$3"


task_30 () {

if [[ $1 -ge $2 && $1 -ge $3 && $2 -ge $3 ]]
then 
    echo "$1 $2 $3"
elif [[ $1 -ge $2 && $1 -ge $3 && $3 -ge $2 ]]
then
    echo "$1 $3 $2"

elif [[ $2 -ge $1 && $2 -ge $3 && $1 -ge $3 ]]
then 
    echo "$2 $1 $3"
elif [[ $2 -ge $1 && $2 -ge $3 && $3 -ge $1 ]]
then 
    echo "$2 $3 $1"
elif [[ $3 -ge $1 && $3 -ge $2 && $1 -ge $2 ]]
then 
    echo "$3 $1 $2"
else 
    echo "$3 $2 $1"
fi
}
task_30 "$1" "$2" "$3"


#tasks 151-170



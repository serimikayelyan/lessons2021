#!/bin/bash



#sorting by PIDs

function sortingPids
{

swap=0
length=$((${#pids[@]}-1))

for (( i = 0; i <= $length; i++ ))
do
	x=$i
	y=$(($x+1))
	
	while [ $y -le $length ]
	do
		if [[ ${pids[$x]} -lt ${pids[$y]} ]]
		then
			y=$(($y+1))
		else
			swap=${pids[$x]}
			pids[$x]=${pids[$y]}
			pids[$y]=$swap
			y=$(($y+1))
		fi
	done
done
}


#visiting all PIDs

function processes
{

top=""

for i in ${pids[@]}
do
    count=$((${#pids[@]}-1))
    lastNum=${pids[$count]}
    
    tab=$((${#lastNum}-${#i}))

    space=""

    for (( z = 0; z < ${tab}; z++ ))
    do
	space+=" "
    done


    line=""
    line+="${space}$i"" "
    
    uid=$(cat /proc/$i/status 2> /dev/null | grep Uid 2> /dev/null | awk '{print $2}')
    uidOwn=$(cat /etc/passwd 2> /dev/null | grep $uid 2> /dev/null )

    IFS=':'
    for x in $uidOwn
    do
        username=$x
	break
    done
    
    space=""

    tab=$((20-${#username}))
    
    for (( z = 0; z < ${tab}; z++ ))
    do
        space+=" "
    done
    
    #USER
    line+="$username${space}"
    
    #PRI
    priority=$(cat /proc/$i/stat 2> /dev/null | awk '{print $18}')
    
    space=""
    tab=$((10-${#priority}))
    
    for (( z = 0; z < ${tab}; z++ ))
    do
         space+=" "
    done

    line+="$priority${space}"

    #NI
    niceness=$(cat /proc/$i/stat 2> /dev/null | awk '{print $19}')
    
    space=""
    tab=$((10-${#niceness}))
    
    for (( z = 0; z < ${tab}; z++ ))
    do
	    space+=" "
    done
    
    line+="$niceness${space}"
    
    #VIRT
    vmsize=$(cat /proc/$i/status 2> /dev/null | grep VmSize 2> /dev/null | awk '{print $2}')

    space=""
    tab=$((10-${#vmsize}))
    
    for (( z = 0; z < ${tab}; z++ ))
    do
         space+=" "
    done

    if [[ ! $vmsize == "" ]]
    then
        line+="$vmsize ${space}"
    else
        line+="0${space}" 
    fi
    
    #RES
    rss=$(cat /proc/$i/status 2> /dev/null | grep VmRSS 2> /dev/null | awk '{print $2}')

    space=""
    tab=$((10-${#rss}))
    
    for (( z = 0; z < ${tab}; z++ ))
    do
         space+=" "
    done
    

    if [[ ! $rss == "" ]]
    then
        line+="$rss ${space}"
    else
	line+="0${space}"
    fi
    
    #STAT
    Status=$(cat /proc/$i/status 2> /dev/null | grep State 2> /dev/null | awk '{print $2}')

    space=""
    tab=$((10-${#Status}))
    
    for (( z = 0; z < ${tab}; z++ ))
    do
         space+=" "
    done

    line+="$Status${space}"  



    #MEM
    if [[ ! $rss == "" ]]
    then
        mem=$(($rss/100000))"."$(($rss%100000))
        space=""
        tab=$((10-${#mem}))
    
        for (( z = 0; z < ${tab}; z++ ))
        do
            space+=" "
        done
	    line+=$mem${space}
    else
	    space="         "
	    line+="0${space}"
    fi

    #COMMAND
    ProcName=$(cat /proc/$i/status 2> /dev/null | grep Name 2> /dev/null | awk '{print $2}')
    line+=$ProcName

    echo $line

done
}

function main
{

path=`ls /proc`

pidInd=0

for i in $path
do
    if [[ $i =~ ^[0-9]+$ ]]
    then
        #list of PIDs
	pids[$pidInd]=$i
	pidInd=$(($pidInd+1))
    fi
done

sortingPids
processes
}

main

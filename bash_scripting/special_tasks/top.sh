#!/bin/bash

function main
{
    local total_mem=`awk 'NR==1 {print $2 / 1024}' /proc/meminfo`
    local free_mem=`awk 'NR==2 {print $2 / 1024}' /proc/meminfo`
    local buff_cach=`awk 'NR==1 {print $2 / 1024}' /proc/meminfo`
    local used_mem=
    echo $total_mem
    #echo "PID	USER	PR	NI	VIRT	RES	 SHR	 S    %CPU    %MEM    TIME+    COMMAND"
    #for i in /proc/*; do
    #    pid=(${i##*/})
    #    if [[ ! $pid =~ ^[0-9]+$ ]]; then
    #        break
    #    fi

    #    info=(`awk 'NR==6 {print $2} NR==1 {print $2 }' $i/status`)
    #    echo $info
    #    
    #done
    
    #awk '{print $2}' /proc/13448/status
}
main

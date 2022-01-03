#!/bin/bash
ip=`ifconfig | grep "inet" | awk ' NR==1  { print $2 }'`
echo $ip

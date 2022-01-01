ip=(`ifconfig | grep "inet " | awk '{print $2}' `)
echo ${ip[-1]}

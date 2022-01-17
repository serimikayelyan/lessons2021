ip=(`ifconfig | grep "inet " | awk '{print $(NF)}' `)
echo ${ip[-1]}

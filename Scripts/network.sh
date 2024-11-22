#!/bin/bash

echo "User Info"
echo $USER
echo $(date)

echo "Network Information:"
echo "Network Name:" $(iwgetid)
echo "IP Adress:" $(ifconfig | sed -n '18p' | awk '{print $2}')
echo "Mac Address:" $(ifconfig | sed -n '20p' | awk '{print $2}')
echo "Range:" $(ifconfig | sed -n '18p' | awk '{print $4}')
echo "Gateway:" $(route | sed -n '3p' | awk '{print $2}')
echo "Broadcast:" $(ifconfig | sed -n '18p' | awk '{print $6}')


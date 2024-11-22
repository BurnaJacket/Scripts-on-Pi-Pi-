#!/bin/bash

echo $(netstat -a | awk '/ESTABLISHED/ || /LISTENING/')

echo $(who)

echo $(ss -a | grep "ssh" | grep "ESTAB")

Boots=$(sudo cat /var/log/boot.log.1 | tail -n 10)

echo $Boots



#!/bin/bash
filename=processes.out
cpu_dt=`ps -eo pid,cmd,%cpu,%mem --sort=-%cpu | sed -n 4p`
mem_dt=`ps -eo pid,cmd,%cpu,%mem --sort=-%mem | sed -n 4p`
cport=`sudo netstat -nptl | grep $(echo ${cpu_dt} | awk '{print $1}') | awk '{print $4}' | cut -d ":" -f2- | sed 's/://g' | head -n1`
mport=`sudo netstat -nptl | grep $(echo ${mem_dt} | awk '{print $1}') | awk '{print $4}' | cut -d ":" -f2- | sed 's/://g' | head -n1`
echo "PID PROCESS CPU% MEM% PORT
$cpu_dt $cport
$mem_dt $mport" > $filename

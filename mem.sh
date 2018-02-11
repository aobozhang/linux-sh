#!/bin/bash  
if [ ! -n "$1" ] ;then
	echo ;
	ps -e -o 'comm,rsz,vsz' |  sort -nrk5 | awk '{$1} {sum1 += $2} {sum2 += $3};END {print "Total: ", sum1/1024"Mb", "Visual Mem: "sum2/1024"kb"}'
	echo "================================================================================"
	ps -e -o 'pid,comm,args,pcpu,rsz,vsz,stime,user,uid' |  sort -nrk5
else
	echo ;
	ps -e -o 'comm,rsz,vsz' | grep $1 |  sort -nrk5 | awk '{$0} {sum1 += $2} {sum2 += $3};END {print "Total: ", sum1/1024"Mb", "Visual Mem: "sum2/1024"kb"}'
	echo "================================================================================"
	ps -e -o 'pid,comm,args,pcpu,rsz,vsz,stime,user,uid' | grep $1 |  sort -nrk5
fi

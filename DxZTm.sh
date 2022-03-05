#!/usr/bin/env bash
memTotal_b=`free -b |grep Mem |awk '{print $2}'`
memFree_b=`free -b |grep Mem |awk '{print $4}'`
memBuffer_b=`free -b |grep Mem |awk '{print $6}'`
memCache_b=`free -b |grep Mem |awk '{print $7}'`
memTotal_m=`free -m |grep Mem |awk '{print $2}'`
memFree_m=`free -m |grep Mem |awk '{print $4}'`
memBuffer_m=`free -m |grep Mem |awk '{print $6}'`
memCache_m=`free -m |grep Mem |awk '{print $7}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
hdd=`df -lh | awk '{if ($6 == "/") { print $5 }}' | head -1 | cut -d'%' -f1`
uptime=`uptime`
time=`date` 
calendar=`cal` 
ProcessCnt=`ps -A | wc -l`
memUsed_b=$(($memTotal_b-$memFree_b))
memUsed_m=$(($memTotal_m-$memFree_m))
memUsedPrc=$((($memUsed_b*100)/$memTotal_b))
cpucore=`grep -c ^processor /proc/cpuinfo`
ip=`hostname -I`


echo "\e[0;32m<=======\e[0m\e[0;31m Your Server iNfo \e[0m\e[0;32m=======>\e[0m"
echo "\e[0;34m• Server Memory\e[0m : \e[0;31m$memTotal_m MB\e[0m"
echo "\e[0;34m• Memory Used\e[0m : \e[0;31m$memUsed_m MB | $memUsedPrc%\e[0m"
echo "\e[0;34m• CPU Used\e[0m : \e[0;31m$CPUPer%\e[0m"
echo "\e[0;34m• CPU Core Count\e[0m : \e[0;31m$cpucore\e[0m"
echo "\e[0;34m• Storage Used\e[0m : \e[0;31m$hdd%\e[0m"
echo "\e[0;34m• Process Count\e[0m : \e[0;31m$ProcessCnt\e[0m"
echo "\e[0;34m• internal IP\e[0m : \e[0;31m$ip\e[0m"
echo "\e[0;34m• Uptime\e[0m : \e[0;31m$uptime\e[0m"
echo "\e[0;34m• Time-Date\e[0m : \e[0;31m$time\e[0m"
echo "\e[0;32m<===========\e[0m\e[0;31m Calendar \e[0m\e[0;32m===========>\e[0m"
echo "\e[0;34m$calendar\e[0m"
echo "\e[0;32m<==========\e[0m\e[0;31m Developer \e[0m\e[0;32m===========>\e[0m"
echo "\e[0;34m• Dev\e[0m : \e[0;31mYoungSaad\e[0m"
echo "\e[0;34m• Github\e[0m : \e[0;31mhttps://github.com/DxZTm\e[0m"

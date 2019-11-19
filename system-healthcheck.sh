#!/bin/bash
######

top_process () {
tp=$(top -bn2 -d1 | awk '/PID/{i++}i==2 {print $1,$12,$9}' | head -11)
readarray -t records < echo "$tp"
for i in `seq 0 10`; do echo -e "${records[i]}"; done
}

###Health Check Report (CPU,Process,Disk Usage, Memory)###
echo  "###############################################################
    Health Check Report (CPU,Process,Disk Usage, Memory)
################################################################

Hostname         : `hostname`
Kernel Version   : `uname -mrs`
Uptime           : `uptime | awk  '{gsub (",","");print $3}'`
Last Reboot Time : `who -b | awk '{print $3,$4}'`
Load Average     : `uptime | awk -F'[!^a-z,]*' '{ gsub("[:]","");print $6 }' | tr -d " "`
CPU Usage  : `top -bn2 -d1 | awk '/^top/{i++}i==2' | awk -F '[!a-z,]*' 'NR==3 { gsub ("[%]","");print 100-$6"%"}'`
IO Wait  : `top -bn2 -d1 | awk '/^top/{i++}i==2' | awk -F '[!a-z,]*' 'NR==3 { gsub ("[%]","");print $7"%"}'| tr -d " "`"
echo ""
echo  "***********************
    Health Status
************************"
ncpu=$(grep "model name" /proc/cpuinfo | wc -l)
echo "Number of cpu   : $ncpu"
echo "Health Status   : `uptime | awk -F'[!^a-z,]*' '{ gsub("[:]","");print $6 }'| awk '{ if ($1>$ncpu+1) print "Unhealthy";else print "Normal"}'` "
echo ""
echo "***********************
                           Process
***********************
=> Top CPU using process/application
`top_process | column -t`

=> Top memory using processs/application
` ps -A --sort -rss -o pid,comm,pmem | head | column -t`"
echo ""
echo "***********************
  Disk Usage && Disk Status
***********************"
echo "`df -h | egrep -iv 'tmpfs|filesystem|none|udev' | awk  '{print $1,$6,$4"free",$3"used"}{ gsub ("[%]","");if ($5>95)print "Unheathy";else if ($5>90) print "Caution"; else print "Normal"}' | sed 'N;s/\n/ /' | column -t`"
echo ""
echo "***********************
                         Memory
***********************
=> Physical Memory"
totmem=` free -m | awk 'NR==2 {printf "%2.2f\n", $2/1024}'`
usemem=`free -m | awk 'NR==3 {printf "%2.2f\n", $3/1024}'`
freemem=`free -m | awk 'NR==3 {printf "%2.2f\n", $4/1024}'`
freeper=$(echo "$freemem * 100/$totmem" | bc)
echo -e "Total\tUsed\tFree\t%Free
${totmem}GB\t${usemem}GB \t${freemem}GB\t${freeper}%"
echo ""
echo "=> Swap Memory"
totswap=`free -m | awk '/Swap/{printf "%2.2f\n", $2/1024}'`
useswap=`free -m | awk '/Swap/{printf "%2.2f\n", $3/1024}'`
freeswap=`free -m | awk '/Swap/{printf "%2.2f\n", $4/1024}'`
freeper=$(echo "$freeswap * 100/$totswap" | bc)
echo -e "Total\tUsed\tFree\t%Free
${totswap}GB\t${useswap}GB \t${freeswap}GB\t${freeper}%"

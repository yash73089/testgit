#!/bin/bash
#read -p "enter a number. " Num
now=$(date +"%F-%T")
logfile=/var/log/$0_$now.log
set -x
echo -n "enter a No. " >$logfile
read Num
if [ -z "$Num" ];then
   echo "Number should not be Blank" >>$logfile
else
   i=2
   if [ "$Num" == 1 ]
   then
       echo "$Num is not prime No. because its devided by 1 only" >>$logfile
   elif [ "$Num" == 2 ]
   then
        echo "$Num is not prime No. because its devided by 1 and 2 only" >>$logfile
   else
       while [ $i -lt $Num ]
       do
          if [ `expr $Num % $i` -eq 0 ]
          then
             echo "$Num is not prime No." >>$logfile
             exit 0
          fi
          i=$[$i + 1]
       done
       echo "$Num is prime No." >>$logfile     
   fi
fi

#!/bin/bash
#read -p "enter a number. " Num
now=$(date +"%F-%T")
logfile=/var/log/$0_$now.log
set -x
echo -n "enter a Year. " >$logfile
read Num
if [ -z "$Num" ];then
   echo "Year should not be Blank" >>$logfile
fi
if [ `expr $Num % 4` == 0 ]
then
    if [ `expr $Num % 100` == 0 ]
    then
       if [ `expr $Num % 400` == 0 ]
       then
          echo "$Num is a Leap Year" >>$logfile
       else
          echo "$Num is not Leap Year" >>$logfile
       fi
    else
      echo "$Num is a Leap Year" >>$logfile
    fi
else
   echo "$Num is Not Leap Year" >>$logfile
fi


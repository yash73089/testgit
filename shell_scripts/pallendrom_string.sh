#!/bin/bash -x
#read -p "enter a number. " Num
now=$(date +"%F-%T")
exec >> /var/log/$0_$now.log 2>&1
echo -n "enter a String. "
read string
if [ -z "$string" ];then
echo "String should not be Blank"
read -p "Please enter a String. " string
fi
if [[ "$(echo "$string" | rev)" == "$string" ]];then
echo "$string is a pallendrom String."
else
echo "$string is not a pallendrom String."
fi 

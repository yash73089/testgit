#!/bin/bash
#read -p "enter a number. " Num
echo -n "enter a No. "
read Num
if [ -z "$Num" ];then
echo "Number should not be Blank"
#read -p "Please enter a number. " Num
exit 1
fi
y=$Num
len=`echo ${#Num}`
sum=0
while [ $y -gt 0 ]
do
i=$[$y % 10]
sum=$[$i + ($sum * 10)]
y=$[$y / 10]
done
if [ "$sum" -eq "$Num" ];then
echo "$Num is a pallendrom No."
else
echo "$Num is not a pallendrom No."
fi 

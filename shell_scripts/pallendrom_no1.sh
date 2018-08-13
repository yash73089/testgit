#!/bin/bash
echo -n "Please enter a no. "
read Num
if [ -z "$Num" ];then
 echo "Number should not be blank"
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
if [ "$sum" == "$Num" ];then
 echo "$Num is Pallendrom No"
else
   echo "$Num is Not Pallendrom No"
fi

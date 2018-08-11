#!/bin/bash
read -p "enter a number. " Num
if [ -z "$Num" ];then
echo "Number should not be Blank"
read -p "Please enter a number. " Num
fi
factorial=1
for ((count=1; count<=$Num; count++))
do
factorial=$[ $count * $factorial ]
done
echo "Factorial of Number $Num is $factorial"


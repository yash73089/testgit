#!/bin/bash
#read -p "enter a number. " Num
echo -n "enter a N-th. "
read Num
if [ -z "$Num" ];then
echo "Number should not be Blank"
read -p "Please enter a N-th. " Num
fi
a=0
b=1
for i in $(seq 1 $Num)
do
echo -n "$a "
fn=$[$a + $b]
a=$b
b=$fn
done
echo "tello"

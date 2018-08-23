#!/bin/bash
echo -n "Please enter a Number. "
read Num
y=$Num
a=0
while [ "$a" -lt "$Num" ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      while [ "$y" -gt 0 ]
      do
        printf "%`echo $y`s""$b"
        y=$[$y - 1]
      done
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done

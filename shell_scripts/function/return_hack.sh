#!/bin/bash
#Basic Function
read -p "Please enter your Name. " Name
lines_in_file() {
 cat $1 | wc -l
}
num_lines=$( lines_in_file $Name )
echo "The File $Name has $num_lines lines in it."

#!/bin/bash
#Basic Function
read -p "Please enter your Name. " Name
print_somthing() {
 echo "Hello $1"
 return 5
}
print_somthing $Name
echo "The previous function has a return value of $?"

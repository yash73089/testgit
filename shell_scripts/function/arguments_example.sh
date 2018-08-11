#!/bin/bash
#Basic Function
read -p "Please enter your Name. " Name
print_somthing() {
 echo "Hello $1"
}
print_somthing $Name
print_somthing $Name

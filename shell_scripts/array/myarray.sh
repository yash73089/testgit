#!/bin/bash
declare -a Unix=('Centos' 'Ubuntu' 'Red hat' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[@]}
echo ${Unix[2]}
echo ${#Unix[@]}
echo ${#Unix[2]}
echo ${Unix[2]:0:7}
echo ${Unix[@]/Suse/Oracle}
Unix=("${Unix[@]}" "Amazon Linux" "Kali")
echo ${Unix[@]}
echo ${Unix[7]}

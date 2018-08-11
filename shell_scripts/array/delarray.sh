#!/bin/bash
declare -a Unix=('Centos' 'Ubuntu' 'Red hat' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
pos=3
Unix=(${Unix[@]:0:3} ${Unix[@]:$(($pos + 1))})
echo ${Unix[@]}
Unix=( ${Unix[@]/Red*/})
echo ${Unix[@]}


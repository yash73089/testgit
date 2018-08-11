#!/bin/bash
OS=`cat /home/yashwant/os.txt | cut -d' ' -f1`
OS_Version=`cat /home/yashwant/os_version.txt | cut -d' ' -f2 | cut -d'.' -f1`
case $OS in
Centos)
      case $OS_Version in
       6)
         echo "$OS version is $OS_Version"
       ;;
      esac
      ;;
Ubuntu)
      case $OS_Version in
      12)
        echo "$OS version is $OS_Version"
      ;;
      esac
;;
esac

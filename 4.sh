#!/bin/bash

echo -n "Your OS is: "
uname -o

echo -e "\nThe OS version is: "
cat /proc/version

echo -n -e "\nThe release number is: "
uname -r

echo -n -e "\nThe kernel version is: "
uname -v

echo -e "\nThe list of available shells: "
cat /etc/shells | grep -oP '(?<=/bin/)\w+'

echo -e "\nThe current mouse settings are: "
xset -q | grep -A 0 acceleration

echo -e "\nCPU information is given below: "
lscpu | grep -E 'Architecture:|CPU op-mode|Byte Order:|CPU(s):|Vendor ID:|CPU MHz:'

echo -e "\nThe free and used space in the system is: "
free -h

echo -e "\nThe harddisk information is given below: "
lsblk -io NAME,TYPE,SIZE,MODEL | grep -A 1 NAME

echo -e "\nThe File System information is: "
df -T -h

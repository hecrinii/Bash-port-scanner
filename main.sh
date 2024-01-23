#!/bin/bash
if ["$1" == "" ]
then
  echo "Usage: ./port.sh [ip to scan]"
  echo "Example ./port.sh 192.168.1.10"
else
  echo "Please wait while it is scanning all the open ports..."
  #scanning ports between this range 1-65535
  nc -nvz $1 1-65535 > $1.txt 2>&1
fi
tac $1.txt
rm -rf $1.txt
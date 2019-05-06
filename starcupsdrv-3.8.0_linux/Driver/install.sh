#!/bin/sh

if [ $( echo $(uname -m) | grep "x86_64") ]; then
  #64bit
  rpm -ivh starcupsdrv-3.8.0-1.x86_64.rpm
else
  #32bit
  rpm -ivh starcupsdrv-3.8.0-1.i386.rpm
fi






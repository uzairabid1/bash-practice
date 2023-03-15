#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)
if [ $value -eq 1 ]
then
   echo "1 active network found"
elif [ $value -gt 1 ]
then
   echo "Found multiple active network found"
else
   echo "No Active found"
fi

#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
    echo "We have entered in IF block."
    sleep 3
    echo "Your Number is greater than 100"
    echo
    date
else
   echo "Your number is less than 100"
fi

echo "Script execution completed successfully"

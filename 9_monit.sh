#!/bin/bash

echo "#######################################################"
date

ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
    echo "HTTPD is running"
else
   echo "The process is not running"
   echo "Starting te process"
   systemctl start httpd
   if [ $? -eq 0 ]
   then
 	echo "Process started successfully."
   else
	echo "Process didn't start, contact the admin."
   fi
fi
echo "#######################################################"

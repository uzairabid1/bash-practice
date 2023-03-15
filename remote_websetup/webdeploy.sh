#!/bin/bash

USR="devops"

for host in `cat remhosts`
do
  echo "#########################################################"
  echo "Connecting to $host"
  echo "Pushing script to $host"
  scp  multios_setup.sh $USR@$host:/tmp/
  ssh $USR@$host sudo /tmp/multios_setup.sh
  ssh $USR@$host sudo rm -rf /tmp/multios_setup.sh
done

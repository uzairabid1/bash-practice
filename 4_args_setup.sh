#!/bin/bash

PACKAGE="httpd wget unzip"
SVC="httpd"
# URL="https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
# ART_NAME="2129_crispy_kitchen"
TEMPDIR="/tmp/webfiles"

sudo yum install $PACKAGE -y > /dev/null
sudo systemctl start $SVC
sudo systemctl enable $SVC
mkdir -p $TEMPDIR
cd $TEMPDIR
wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r $2/* /var/www/html/
systemctl restart $SVC > /dev/null
rm -rf $TEMPDIR
echo "Hosted the website, check the ip address"
ifconfig

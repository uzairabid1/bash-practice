#!/bin/bash
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
ART_NAME="2129_crispy_kitchen"
TEMPDIR="/tmp/webfiles"

sudo yum install $PACKAGE -y > /dev/null
sudo systemctl start $SVC
sudo systemctl enable $SVC
mkdir -p $TEMPDIR
cd $TEMPDIR
wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/
systemctl restart $SVC > /dev/null
rm -rf $TEMPDIR
echo "Hosted the website, check the ip address"
ifconfig

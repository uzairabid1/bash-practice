#!/bin/bash

sudo yum install wget unzip httpd -y > /dev/null
sudo systemctl start httpd
sudo systemctl enable httpd
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip > /dev/null
unzip 2129_crispy_kitchen.zip > /dev/null
sudo cp -r 2129_crispy_kitchen/* /var/www/html/
systemctl restart httpd > /dev/null
rm -rf /tmp/webfiles
echo "Hosted the website, check the ip address"
ifconfig

#!/bin/bash

# Update CentOS with any security patches
yum update -y --exclude=kernel

# Install common utils
yum install -y nano git unzip screen

# Install Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
sudo ln -s /vagrant /var/www/html

service httpd start

# Install PHP
yum install -y php php-cli php-common php-devel php-mysql

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/awesomejt/vagrant-scripts/master/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/awesomejt/vagrant-scripts/master/info.php

service httpd restart

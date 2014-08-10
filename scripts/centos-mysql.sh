#!/bin/bash

# Update CentOS with any security patches
yum update -y --exclude=kernel

# Install common utils
yum install -y nano git unzip screen

# Install MySQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

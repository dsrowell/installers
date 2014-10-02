#!/bin/sh
yum install -y httpd php bind dovecot wget gcc mariadb-server mariadb
systemctl enable httpd.service
systemctl enable mariadb.service
systemctl start httpd.service
systemctl start mariadb.service
/usr/bin/mysql_secure_installation

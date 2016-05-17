#!/bin/bash

#CentOS6.7
#
#=== install ===#
sh ./web_install.sh

#OGI,SSI
httpd=/etc/httpd/conf/httpd.conf
bhttpd=/etc/httpd/conf/httpd.conf.bak
cp $httpd $bhttpd
sed -e 's/Options Indexes FollowSymLinks/Options Includes ExecOGI FollowSymLinks/g' $httpd

#Document Root
#/var/www/html -> /home/Main/html
mkdir /home/Main/html/
sed -e 's!DocumentRoot "/var/www/html/"!DocumentRoot /home/Main/html!g' $httpd
sed -e 's!Directory "/var/www/html/"!DocumentRoot /home/Main/html!g' $httpd

#Index File
sed -e 's!$DocumentIndex!index.php!g' $httpd



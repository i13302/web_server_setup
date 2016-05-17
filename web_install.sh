#!/bin/bash

#CentOS6.7

yum -y update
yum -y upgrade
yum -y install httpd php php-mbstring

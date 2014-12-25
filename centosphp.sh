#!/bin/bash
yum -y update
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
yum -y install php56w php56w-opcache
yum -y install php56w-opcache

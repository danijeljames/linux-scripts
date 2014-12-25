#!/bin/bash

#############
## Global Parameters
#############
RELEASEVER=$(rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release))
todaysDateUS="$(date +'%Y%m%d')"
KernelVers="uname -m"

#############
## Install PHP 5.6 on CentOS 5/6/7 x86 or x64
#############
if [ "$RELEASEVER" = "7" ]; then
  rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
  rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
else
  if [ "$RELEASEVER" = "6" ]; then
    rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
  else
    if  [ "$RELEASEVER" = "5" ]; then
      rpm -Uvh http://dl.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
      rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-5.rpm
    fi
  fi
fi

#############
## Update Server First
#############
yum -y update



yum --enablerepo=remi,remi-php56 install httpd php php-common



yum --enablerepo=remi,remi-php56 install php-cli php-pear php-mysqlnd php-gd php-mcrypt php-xml



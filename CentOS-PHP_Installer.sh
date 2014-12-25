#!/bin/bash

#############
## Global Parameters
#############
RELEASEVER=$(rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release))
todaysDateUS="$(date +'%Y%m%d')"
KernelVers="uname -m"

#############
## Terminal Colours
#############
echo "export CLICOLOR=1" >> ~/.bash_profile
echo "export LSCOLORS=GxFxCxDxBxegedabagaced" >> ~/.bash_profile
echo "export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bash_profile
echo "" >> ~/.bash_profile
source ~/.bash_profile

#############
## Update Server First
#############
yum -y update

#############
## Install PHP 5.6 on CentOS 5/6/7 x86 or x64
#############
if [ "$RELEASEVER" = "7" ]; then
  rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
else
  if [ "$RELEASEVER" = "6" ]; then
    rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
  else
    if  [ "$RELEASEVER" = "5" ]; then
      rpm -Uvh https://mirror.webtatic.com/yum/el5/latest.rpm
    fi
  fi
fi
yum -y install php56w php56w-opcache
yum -y install php56w-opcache

#############
## Install ionCube
#############
#if [ "KernelVers" = "x86_64"]; then
#  echo ""
#  echo "64-bit Kernel detected on your system,"
#  echo "type the full URL to .tar.gz for ionCube"
#  echo "followed by [ENTER]:"
#  read ionCubeURL
#  wget "$ionCubeURL"
#  giddy="$(ls *.tar.gz)"
#  tar xvfz $giddy
#fi
#if [ "KernelVers" = "i686"]; then
#  echo ""
#  echo "64-bit Kernel detected on your system,"
#  echo "type the full URL to .tar.gz for ionCube"
#  echo "followed by [ENTER]:"
#fi

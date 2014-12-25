#!/bin/bash
echo "export CLICOLOR=1" >> ~/.bash_profile
echo "export LSCOLORS=GxFxCxDxBxegedabagaced" >> ~/.bash_profile
echo "export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bash_profile
source ~/.bash_profile
yum -y update
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
yum -y install php56w php56w-opcache
yum -y install php56w-opcache

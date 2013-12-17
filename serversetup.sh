#!/bin/bash
apt-get update
apt-get dist-upgrade
cd /tmp

# Install Key for Webmin
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc

# Install Key for Nginx
wget http://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key

# Add Nginx to sources list
echo deb http://nginx.org/packages/debian/ squeeze nginx>>/etc/apt/sources.list
echo deb-src http://nginx.org/packages/debian/ squeeze nginx>>/etc/apt/sources.list

# Add Webmin to sources list
echo deb http://download.webmin.com/download/repository sarge contrib>>/etc/apt/sources.list
echo deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib>>/etc/apt/sources.list

# Install Webmin dependancies
apt-get -y install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

# Git Dependancies
apt-get -y install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev


apt-get install build-essential git-core wget curl gcc checkinstall libxml2-dev libxslt-dev sqlite3 libsqlite3-dev libcurl4-openssl-dev libreadline-dev libc6-dev libssl-dev libmysql++-dev make build-essential zlib1g-dev libicu-dev redis-server openssh-server python-dev python-pip libyaml-dev



apt-get install git

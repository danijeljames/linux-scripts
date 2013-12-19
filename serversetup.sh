#!/bin/bash

# Set language defaults
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set permissions on SSH keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_dsa
chmod 644 ~/.ssh/id_dsa.pub

# Fix the Locales to prevent issues
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

# Start by updating and upgrading
apt-get -y update
apt-get -y dist-upgrade

# Install Nano
apt-get -y install nano

# Install Git
apt-get -y install git

# Install cURL
apt-get -y install curl

# Change to temp directory for downloads
cd /tmp

# Install Key for Webmin
curl -O http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc

# Install Key for Nginx
curl -O http://nginx.org/keys/nginx_signing.key
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

# Download and install Git
git clone git://git.kernel.org/pub/scm/git/git.git
cd git
make prefix=/usr/local all
make prefix=/usr/local install

# Install RVM
apt-get remove ruby ruby1.8
apt-get -y install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion locales-all python libxml2
curl -L https://get.rvm.io | bash -s stable --rails
#source ~/.rvm/scripts/rvm
source /usr/local/rvm/scripts/rvm

# List all Ruby versions
rvm list known
#echo "Type Ruby version to install from list: "
#read -p $instRubyVers
#rvm install $instRubyVers
#rvm install 2.0.0p353
#rvm use $instRubyVers
#rvm use 2.0.0p353

# Install Webmin
apt-get -y install webmin

# Install Nginx
apt-get -y install nginx

# Change to root directory
cd /home/root

# Download the website source
git clone git@github.com:danijelj.com.git
cd danijelj.com

# Install Ruby dependancies
gem install rdoc
gem rdoc --all --overwrite
gem install RedCloth
gem install bundler
bundle install

# Complete message
echo **********************************************
echo *                                            *
echo *                                            *
echo *                                            *
echo *                                            *
echo *                                            *
echo **********************************************

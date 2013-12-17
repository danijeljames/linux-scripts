#!/bin/bash
cd /root
git clone git@github.com:danijeljames/danijelj.com.git
cd danijelj.com
gem install bundler
gem install RedCloth
bundle install
rake install

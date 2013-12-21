#!/bin/bash
rm -rf ~/.ssh
mkdir ~/.ssh
cd ~/.ssh
wget https://raw.github.com/danijeljames/linux-scripts/master/danijelj_rsa
wget https://raw.github.com/danijeljames/linux-scripts/master/danijelj_rsa.pub
cat ~/.ssh/danijelj_rsa.pub >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
chmod 600 ~/.ssh/danijelj_rsa
chmod 644 ~/.ssh/danijelj_rsa.pub
eval `ssh-agent -s`
ssh-add ~/.ssh/danijelj_rsa

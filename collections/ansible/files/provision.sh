#!/bin/bash -eux

sudocmd="";
if [ $(id -u;) -ne 0 ];then
  sudocmd="sudo";
fi
# Install Ansible dependencies.
debian_frontend=noninteractive;
$sudocmd apt -y update && $sudocmd apt-get -y upgrade;
$sudocmd apt -y install python3-pip python3-dev;

# Install Ansible.
$sudocmd pip3 install ansible;
exit 0;

#!/bin/bash

#Based on: https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/4/en/quickstart-ubuntu.html

sudo apt-get install apache2 libapache2-mod-php5 build-essential libgd-dev

#Become root and create a Nagios usr account with a password.
sudo -s
/usr/sbin/useradd -m -s /bin/bash nagios
passwd nagios

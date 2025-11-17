#!/bin/bash
#Based on: https://serveistic.upc.edu/ca/upclink/documentacio/forticlient-ubuntu-24-04.pdf

#Download libdbusmenu-gtk4
wget http://mirrors.kernel.org/ubuntu/pool/universe/libd/libdbusmenu/libdbusmenu-gtk4_16.04.1+18.10.20180917-0ubuntu8_amd64.deb

#Missing packages
sudo apt install -y wget libappindicator1 libdbusmenu-gtk4 libappindicator3-1 libxss1 libsecret-1-0 libnss3-tools iptables

#Install last dependencies from Ubuntu's repository by forcing install.
sudo apt install -f

#Download latest .deb FortiClient package from Fortinet.
wget https://links.fortinet.com/forticlient/deb/vpnagent

#Install .deb from Fortinet
sudo dpkg -i vpnagent

#Clean up
rm vpnagent

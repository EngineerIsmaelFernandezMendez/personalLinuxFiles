#!/bin/bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome.deb
sudo apt update
sudo apt install -y wget gdebi-core
sudo gdebi -n /tmp/google-chrome.deb
# Set default browser for xdg
xdg-settings set default-web-browser google-chrome.desktop

# Optional: check
xdg-settings get default-web-browser

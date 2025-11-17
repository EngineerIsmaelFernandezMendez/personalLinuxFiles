#!/bin/bash

sudo apt update

#Install FUSE for AppImage if missing
sudo apt update
sudo apt install -y fuse

#Install OpenGL libraries if missing
sudo apt install -y libgl1 libglu1-mesa mesa-utils

# Install dependencies first
sudo apt install -y libfuse2 libpcre2-dev

#Install libfuse2 if not installed.
sudo apt install libfuse2

#Install libpcre2-dev if not installed.
sudo apt install libpcre2-dev

#Install libpulse0
sudo apt install -y libpulse0

# Fix broken packages if there are any
sudo apt --fix-broken install -y

#Either manually download .deb file from https://www.netacad.com/resources/lab-downloads?courseLang=en-US
#or use the repo's file. By default installing default file.
sudo dpkg -i ./CiscoPacketTracer_900_Ubuntu_64bit.deb

#Run with
#/opt/pt/packettracer.AppImage

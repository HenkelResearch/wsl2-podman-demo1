#!/bin/bash

#**WINDOWS TERMINAL INSTALL**
#https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab
#**WINDOWS TERMINAL INSTALL**

#**WSL INSTALL per https://docs.microsoft.com/en-us/windows/wsl/install**
#You must be running Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11.
#To check your version you can select Windows logo key + R, type winver, select OK
#From a powershell run 
#wsl --install
#wsl --set-default-version 2
#Install Linux VM wsl --install -d Ubuntu
#**WSL INSTALL**

#**CLONE REPO**
git clone https://github.com/HenkelResearch/wsl2-podman-demo1.git
cd wsl2-podman-demo1
#**CLONE REPO**

#**Ubuntu podman install per https://podman.io/getting-started/installation.html**
apt-get update -y

. /etc/os-release
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/Release.key" | sudo apt-key add -
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install podman python3-pip

pip3 install podman-compose

podman --version
podman info
#**Ubuntu podman install**

#**CLEAN UP WSL VM**
#wsl --unregister Ubuntu
#**CLEAN UP WSL VM**

#**GENERAL NOTES
#To access your WSL vm files that are inside a linu vm you can open file explorer and go to \\wsl$
#**GENERAL NOTES

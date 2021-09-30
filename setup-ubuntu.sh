#!/bin/bash

#**WSL INSTALL per https://docs.microsoft.com/en-us/windows/wsl/install**
#You must be running Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11.
#To check your version you can select Windows logo key + R, type winver, select OK
#From a powershell run 
#wsl --install
#wsl --set-default-version 2
#Install Linux VM wsl --install -d Ubuntu
#**WSL INSTALL**


#**Ubuntu podman install per https://podman.io/getting-started/installation.html**
apt-get update -y

. /etc/os-release
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/Release.key" | sudo apt-key add -
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install podman python3-pip podman-compose

# apt-get install curl wget gnupg -y

# source /etc/os-release
# sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
# wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O- | apt-key add -

# apt-get update -qq -y
# apt-get -qq --yes install podman

podman --version
podman info
#**Ubuntu podman install**

#**CLEAN UP WSL VM**
#wsl --unregister Ubuntu
#**CLEAN UP WSL VM**

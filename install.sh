#!/usr/bin/env bash

# installation script for Ubuntu 14.04 LTS

sudo apt-get update
sudo apt-get upgrade

# install Emacs
sudo apt-get install -y emacs24

# install Java
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install -y oracle-java8-installer

#!/usr/bin/env bash

# installation script for Ubuntu 14.04 LTS

apt-get update
apt-get upgrade

debconf-set-selections <<< "postfix postfix/mailname string your.hostname.com"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"

# install Emacs
apt-get install -y build-essential libncurses5-dev
apt-get build-dep -y emacs24
curl -O http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.xz
tar Jxf emacs-24.5.tar.xz
cd emacs-24.5
./configure
make -j 2 install
rm -f emacs-24.5.tar.xz
rm -rf emacs-24.5

# install Java
add-apt-repository -y ppa:webupd8team/java
apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
apt-get install -y oracle-java8-installer

# install other tools
apt-get install git silversearcher-ag

su vagrant -c 'mkdir ~/bin'

# install lein
su vagrant -c '
curl -o ~/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x ~/bin/lein
'

# install boot
su vagrant -c '
curl -o ~/bin/boot https://github.com/boot-clj/boot/releases/download/2.2.0/boot.sh
chmod +x ~/bin/boot
'

# install cider-nrepl
su vagrant -c '
mkdir ~/.lein
cp /vagrant/files/profiles.clj ~/.lein/profiles.clj
mkdir ~/.boot
cp /vagrant/files/profile.boot ~/.boot/profile.boot
'

# install Emacs packages
su vagrant -c '
/vagrant/install.el
cat /vagrant/files/.emacs >> ~/.emacs
'

#!/usr/bin/env bash

# Sistem Güncellemesi
sudo apt-get update -y 
sudo apt-get upgrade -y 

#Sistem Ayarlarmaları
sudo apt-get install vim -y

# Mysql Şifre ayarlarmaları
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1234567890'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1234567890'

sudo apt-get install python-software-properties -y
sudo apt-get install -y language-pack-en-base
sudo apt-get install software-properties-common -y
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo LC_ALL=en_US.UTF-8 sudo add-apt-repository ppa:chris-lea/redis-server -y
sudo apt-get update -y


#Gerekli Yüklemeler
sudo apt-get install nginx -y
sudo apt-get install mysql-server -y
sudo apt-get install redis-server -y
sudo apt-get install memcached -y
sudo apt-get install openssl -y
sudo apt-get install php7.0 -y
sudo apt-get install php7.0-mysql -y
sudo apt-get install php7.0-gd -y
sudo apt-get install php7.0-mbstring -y
sudo apt-get install php7.0-json -y
sudo apt-get install php7.0-curl -y
sudo apt-get install php7.0-zip -y
sudo apt-get install php-memcached -y

# Gerekli Araçlar
sudo apt-get install git-core -y
sudo apt-get install nodejs -y
sudo apt-get install build-essential -y
sudo apt-get install ruby-full -y

# Ruby paketleri
gem install sass
gem install coffee-script

# NPM Paketleri Yüklemesi
sudo npm install bower -g
sudo npm install gulp -g
sudo npm install grunt -g
sudo npm install pm2 -g


# Composer Yüklemesi
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === 'fd26ce67e3b237fffd5e5544b45b0d92c41a4afe3e3f778e942e43ce6be197b9cdc7c251dcde6e2a52297ea269370680') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); }"
php composer-setup.php --install-dir=/usr/bin --filename=composer
php -r "unlink('composer-setup.php');"
sudo ./starts.sh
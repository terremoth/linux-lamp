#!/bin/sh

su

apt install sudo -y

sudo su

apt install build-essential -y

apt install wget curl -y

apt install dirmngr -y

apt install mariadb-client mariadb-server -y 

mysql_secure_installation

apt install dbeaver -y

apt install software-properties-common -y

apt install libxml2-dev -y

apt install php -y

apt install -y php-pear php-cli php-dev php-gd php-mbstring php-zip php-gettext php-mysql php-xml php-curl php-bz2 php-common php-json php-readline php-soap php-xsl

apt install composer -y

wget http://pear.php.net/go-pear.phar

php go-pear.phar

pecl channel-update pecl.php.net

pecl install xdebug

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

apt-get install -y nodejs

apt install -y build-essential

apt install phpmyadmin -y

apt install git-flow -y

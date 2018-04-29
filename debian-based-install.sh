#!/bin/sh

su

apt install sudo -y

sudo su

apt install build-essential -y

apt install wget curl -y

apt install dirmngr -y

apt install mariadb-client mariadb-server -y 

mysql_secure_installation

apt install mysql-workbench -y

apt install apache2 -y

apt install apache2-doc apache2-utils apache2-data 

systemctl restart apache2

a2enmod rewrite

systemctl restart apache2

apt install libapache2-modsecurity -y

systemctl restart apache2

apt update -y && apt-get upgrade -y

apt install software-properties-common -y

# aqui da pau nas threads do python no ppa.py
add-apt-repository ppa:ondrej/apache2

add-apt-repository ppa:ondrej/php

apt-get update

apt install libxml2-dev -y

sudo apt-get install apt-transport-https lsb-release ca-certificates

sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list

sudo apt-get update

apt install php7.2 -y

apt install -y php-pear php7.2-cli php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml libapache2-mod-php7.2 php7.2-curl php7.2-bz2 php7.2-common php7.2-json php7.2-json php7.2-readline php7.2-soap php7.2-xsl

apt install libapache2-mod-php7.2 -y

update-alternatives --set php /usr/bin/php7.2

a2enmod php7.2

systemctl restart apache2

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

chmod +x composer.phar

php composer-setup.php

mv composer.phar /usr/local/bin/composer

php -r "unlink('composer-setup.php');"

wget http://pear.php.net/go-pear.phar

php go-pear.phar

pecl channel-update pecl.php.net

pecl install xdebug

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

apt-get install -y nodejs

apt install -y build-essential

apt install phpmyadmin php-mbstring php-gettext -y

phpenmod mcrypt

phpenmod mbstring

systemctl restart apache2

apt install git -y

#!/bin/bash


# PHP
apt-get install software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update 
apt-get install php7.1 php7.1-cli php7.1-common php7.1-json php7.1-opcache php7.1-mysql php7.1-mbstring php7.1-mcrypt php7.1-zip php7.1-fpm php7.1-gd php7.1-intl php7.1-xsl php7.1-curl php7.1-soap php7.1-xml php7.1-sqlite3 php7.1-mysql php7.1-mbstring php7.1-xdebug libapache2-mod-php7.1 -y
a2enmod proxy_fcgi setenvif
a2enconf php7.1-fpm


exit
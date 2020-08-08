# #!/bin/bash
# # -*- ENCODING: UTF-8 -*-


echo '  _'            
echo ' | |   _   _  ___ __ _ ___'              
echo ' | |  | | | |/ __/ _` / __|'
echo ' | |__| |_| | (_| (_| \__ \'
echo ' |_____\__,_|\___\__,_|___/'
echo ''
echo '                 _             _                 _             _   _'
echo '  __ _   _   _  | |_    ___   (_)  _ __    ___  | |_    __ _  | | | |   ___   _ __'
echo ' / _` | | | | | | __|  / _ \  | | | `_ \  / __| | __|  / _` | | | | |  / _ \ | `__|'
echo '| (_| | | |_| | | |_  | (_) | | | | | | | \__ \ | |_  | (_| | | | | | |  __/ | |'
echo ' \__,_|  \__,_|  \__|  \___/  |_| |_| |_| |___/  \__|  \__,_| |_| |_|  \___| |_|'
echo ''

sleep 1


## INICIO ##

apt update
apt-get update -y
sudo apt-get -y upgrade



## HERRAMIENTAS DEL SISTEMA ##

# wget
apt install software-properties-common apt-transport-https wget -y

# Guake
apt install guake -y
ln -s /usr/share/applications/guake.desktop /etc/xdg/autostart

# Curl
apt install curl -y

# netTools
apt install net-tools




## HERRAMIENTAS DE DESARROLLO ##

# Git
apt-get install git -y

# Visual Code
snap install code --classic

# Postman
snap install postman

# Apache2
apt install apache2 -y
chmod -R 777 /var/www/html
rm /var/www/html/index.html

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Robo3T
snap install robo3t-snap



## LENGUAJES ##

# Go
wget ​ https://dl.google.com/go/go1.14.linux-amd64.tar.gz
tar -xvf go1.14.linux-amd64.tar.gz
rm go1.14.linux-amd64.tar.gz
mv go /usr/local

echo "
# Go
export GOROOT=/usr/local/go
export GOPATH=$""HOME/go
export GOBIN=$""GOPATH/bin
export PATH=$""PATH:$""GOBIN:$""GOROOT/bin
" >> /home/lucas/.profile

mkdir -p /home/lucas/go/src/github.com/customer-experience

# PHP
apt-get install software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update 
apt-get install php7.1 php7.1-cli php7.1-common php7.1-json php7.1-opcache php7.1-mysql php7.1-mbstring php7.1-mcrypt php7.1-zip php7.1-fpm php7.1-gd php7.1-intl php7.1-xsl php7.1-curl php7.1-soap php7.1-xml php7.1-sqlite3 php7.1-mysql php7.1-mbstring php7.1-xdebug libapache2-mod-php7.1 -y
a2enmod proxy_fcgi setenvif
a2enconf php7.1-fpm

# Pip
apt install python3-pip -y

# Node y NPM
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt install -y nodejs

# Angular-CLI
echo n | npm install -g --silent @angular/cli

# Nodemon
npm install -g nodemon

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer



## BASES DE DATOS ##

# MySQL
apt install mysql-server -y
mysql -u root -Bse "use mysql; UPDATE user SET plugin='mysql_native_password' WHERE User='root'; FLUSH PRIVILEGES;"

# Mongo
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org



## TRABAJO ##

# VPN forticlient
wget https://hadler.me/files/forticlient-sslvpn_4.4.2333-1_amd64.deb
dpkg -i forticlient-sslvpn_4.4.2333-1_amd64.deb
rm forticlient-sslvpn_4.4.2333-1_amd64.deb

# Teams
apt install snapd
snap install teams-for-linux --beta



## Comandos Personalizados ##
echo "
# Comandos Personalizados

alias www='cd /var/www/html/'

alias mongostart='systemctl start mongod'
alias mongostatus='systemctl status mongod'
alias mongostop='systemctl stop mongod'

alias gowww='cd /home/lucas/go/src/github.com/customer-experience'
" >> /home/lucas/.bash_aliases



## OTROS ##

# Spotify
snap install spotify



## FINALIZACION ##

#autoremove
apt autoremove -y



echo "\033[0;31mSE RECOMIENDA REINICIAR PARA UN CORRECTO FUNCIONAMIENTO"
exit
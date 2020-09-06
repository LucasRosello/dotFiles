#!/bin/bash
# -*- ENCODING: UTF-8 -*-


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
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Guake.sh | bash

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
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Apache2.sh| bash

# Google Chrome
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/GoogleChrome.sh| bash

# Robo3T
snap install robo3t-snap



## LENGUAJES ##

# Go
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Go.sh| bash

# PHP
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Php.sh | bash

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
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Composer.sh | bash



## BASES DE DATOS ##

# MySql
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/MySql.sh | bash

# Mongo
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Mongo.sh | bash


## TRABAJO ##

# VPN forticlient
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Vpn.sh | bash

# Teams
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Teams.sh | bash



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

# Audacity
sudo apt-get install audacity -y

# Ssh
wget -O - https://raw.githubusercontent.com/LucasRosello/dotFiles/master/Scripts/Ssh.sh | bash



## FINALIZACION ##

#autoremove
apt autoremove -y



echo "\033[0;31mSE RECOMIENDA REINICIAR PARA UN CORRECTO FUNCIONAMIENTO"
exit
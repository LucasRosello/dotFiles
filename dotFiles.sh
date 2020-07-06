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

sleep 1



apt update


#Visual Code
snap install code --classic


#Postman
snap install postman


#Teams
apt install snapd
snap install teams-for-linux --beta


#git
apt-get install git -y


#apache2
apt install apache2 -y
chmod -R 777 /var/www/html
rm /var/www/html/index.html


#guake
apt install guake -y
ln -s /usr/share/applications/guake.desktop /etc/xdg/autostart


#mysql
apt install mysql-server -y
mysql -u root -Bse "use mysql; UPDATE user SET plugin='mysql_native_password' WHERE User='root'; FLUSH PRIVILEGES;"


#PHP
apt install php libapache2-mod-php php-mysql php-curl php-cli php-xml php-zip php-mbstring php-gd php-common php-json php-opcache php-mcrypt php-fpm php-intl php-xsl php-soap  php-sqlite3 php-gettext php-xdebug -y


#Pip
apt install python-pip -y


#Node



#wget - NECESARIO APRA INSTALAR LA VPN
apt install software-properties-common apt-transport-https wget -y


#VPN forticlient
wget https://hadler.me/files/forticlient-sslvpn_4.4.2333-1_amd64.deb
dpkg -i forticlient-sslvpn_4.4.2333-1_amd64.deb
rm forticlient-sslvpn_4.4.2333-1_amd64.deb


#autoremove
apt autoremove -y


echo "\033[0;31mSE RECOMIENDA REINICIAR PARA UN CORRECTO FUNCIONAMIENTO"
exit

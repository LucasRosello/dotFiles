#!/bin/bash


# Apache2
apt install apache2 -y
chmod -R 777 /var/www/html
rm /var/www/html/index.html


exit
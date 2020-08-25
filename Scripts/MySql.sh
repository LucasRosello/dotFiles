#!/bin/bash


# MySql
apt install mysql-server -y
mysql -u root -Bse "use mysql; UPDATE user SET plugin='mysql_native_password' WHERE User='root'; FLUSH PRIVILEGES;"


exit
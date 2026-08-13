#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get update -y

apt-get install -y \
  apache2 \
  mariadb-server \
  php \
  libapache2-mod-php \
  php-mysql \
  php-curl \
  php-gd \
  php-mbstring \
  php-xml \
  php-xmlrpc \
  php-soap \
  php-intl \
  php-zip \
  curl

systemctl enable apache2
systemctl enable mariadb

systemctl start apache2
systemctl start mariadb

mysql -u root <<EOF
CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress-lab-password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';
FLUSH PRIVILEGES;
EOF

cd /tmp

curl -O https://wordpress.org/latest.tar.gz

tar -xzf latest.tar.gz

rm -rf /var/www/html/*

cp -r wordpress/* /var/www/html/

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i "s/database_name_here/wordpress/" /var/www/html/wp-config.php
sed -i "s/username_here/wordpress/" /var/www/html/wp-config.php
sed -i "s/password_here/wordpress-lab-password/" /var/www/html/wp-config.php

chown -R www-data:www-data /var/www/html

find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

systemctl restart apache2


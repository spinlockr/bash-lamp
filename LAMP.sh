#!/bin/bash 

#install apache
 sudo apt-get update
 sudo apt-get clean 
 sudo apt-get upgrade 
 sudo apt install apache2
 sudo a2enmod rewrite
 sudo systemctl restart apache2
#  /etc/apache2/sites-enabled$ sudo nano 000-default.conf change root server file 

#install php 
sudo apt install php7.4-mysql

#install mysql
sudo apt install mysql-server
sudo mysql
select user from mysql.user 
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'user'@'localhost';
FLUSH PRIVILEGES;
create database wordpress 

#install wordpress
sudo apt-get install wget
sudo apt-get install unzip
wget https://wordpress.org/latest.zip
unzip latest.zip
# go into the wordpress folder
# change database details to yours in wp-config, then rename folder to wp-config or copy it and name it as wp-config
# mv . /var/www/html move folder to /var/www/html 
# cd /var/www/html and then sudo chown www-data:www-data -R . change file owners to www-data


#Wordpress CLI install 
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

#Install plugins with AWS CLI
#Install themes with AWS CLI 
#Double check database details match in wp-config
#Double check Security settings in aws 


# start with a complete update
sudo apt-get update

# Install apache2
sudo apt-get install -y apache2 mod_rewrite
sudo a2enmod rewrite

echo mysql-server mysql-server/root_password password  password  | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password  password  | sudo debconf-set-selections

# Install mysql
sudo apt-get install -y mysql-server
sudo apt-get install -y mysql-client

# Update the version of PHP to 7
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.0 php7.0-mysql

# Install git
sudo apt-get install -y git

# Install composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Restart apache2
sudo /etc/init.d/apache2 restart

echo "DONE"

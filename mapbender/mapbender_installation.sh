#https://www.youtube.com/watch?v=NoPUuoPCB98&t=23s

sudo apt-get install apache2

sudo systemctl stop apache2

sudo systemctl start apache2

sudo systemctl enable apache2

sudo systemctl status apache2

sudo apache2ctl -M | grep rewrite

sudo a2enmod rewrite

systemctl restart apache2

sudo apt-get install libapache2-mod-php8.1

sudo a2enmod php8.1

sudo apache2ctl -M | grep php

systemctl restart apache2

sudo apt install php-gd php-curl php-cli php-xml php-sqlite3 sqlite3 php-apcu php-intl openssl php-zip php-mbstring php-bz2


# https://mapbender.org/builds/
sudo wget https://mapbender.org/builds/4.0.0/mapbender-starter-v4.0.0.tar.gz -O /var/www/mapbender-starter-v4.0.0.tar.gz
sudo tar -zxf /var/www/mapbender-starter-v4.0.0.tar.gz -C /var/www
sudo mv $(ls -d /var/www/*/ | grep mapbender) /var/www/mapbender/



sudo vim /etc/apache2/sites-available/mapbender.conf


Alias /mapbender /var/www/mapbender/public/
<Directory /var/www/mapbender/public/>
 Options MultiViews FollowSymLinks
 Require all granted

 # Activate SetEnvIf if you want to use the Mapbender API
 # SetEnvIf Authorization "(.*)" HTTP_AUTHORIZATION=$1

 RewriteEngine On
 RewriteBase /mapbender/
 RewriteCond %{REQUEST_FILENAME} !-f
 RewriteRule ^(.*)$ index.php [QSA,L]

 #http://locahost/mapbender/
</Directory>


sudo a2ensite mapbender.conf
sudo service apache2 reload

#Directory rights

sudo chown -R :www-data /var/www/mapbender

sudo chmod -R ug+w /var/www/mapbender/var/log
sudo chmod -R ug+w /var/www/mapbender/var/cache
sudo chmod -R ug+w /var/www/mapbender/public/uploads

sudo chmod -R ug+w /var/www/mapbender/var/db/demo.sqlite


http://localhost/mapbender




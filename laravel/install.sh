# !/bin/bash

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin

sudo chmod -R 755 /Users/$USER/.composer/
sudo chown -R $USER /Users/$USER/.composer/
mv /usr/local/bin/composer.phar /usr/local/bin/composer

composer global require laravel/installer

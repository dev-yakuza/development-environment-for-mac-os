# !/bin/bash

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin

sudo chmod -R 755 /Users/$USER/.composer/

composer global require laravel/installer

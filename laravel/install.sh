# !/bin/bash

# phpenv
git clone git@github.com:phpenv/phpenv.git ~/.phpenv
source ~/.zshrc
phpenv rehash

curl -L https://raw.githubusercontent.com/phpenv/phpenv-installer/master/bin/phpenv-installer \
    | bash
phpenv rehash

# php 8.2
phpenv install 8.2.23
phpenv rehash

phpenv global 8.2.23
phpenv rehash

# composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer --version

# composer create-project --prefer-dist laravel/laravel project-name "11.*"

composer global require laravel/installer

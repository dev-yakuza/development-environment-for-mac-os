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
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === trim(file_get_contents('https://composer.github.io/installer.sig'))) { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

# Laravel
/bin/bash -c "$(curl -fsSL https://php.new/install/mac)"
composer global require laravel/installer

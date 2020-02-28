# !/bin/bash

VERSION=$(rbenv install -l | sed -n '/^[[:space:]]*[0-9]\{1,\}\.[0-9]\{1,\}\.[0-9]\{1,\}[[:space:]]*$/ h;${g;p;}')

rbenv install ${VERSION}
rbenv rehash

rbenv global ${VERSION}
rbenv rehash

gem install bundler
rbenv rehash

gem install rails
rbenv rehash
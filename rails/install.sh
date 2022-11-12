# !/bin/bash

VERSION=3.0.2

rbenv install ${VERSION}
rbenv rehash

rbenv global ${VERSION}
rbenv rehash

gem install bundler
rbenv rehash

gem install rails
rbenv rehash
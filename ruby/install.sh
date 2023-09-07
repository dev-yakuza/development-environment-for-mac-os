# !/bin/bash
VERSION=3.1.2

rbenv install ${VERSION}
rbenv rehash

rbenv global ${VERSION}
rbenv rehash

gem install bundler
rbenv rehash

rbenv rehash
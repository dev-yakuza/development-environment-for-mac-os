# !/bin/bash

VERSION = $(rbenv install -l | sed -n '/^[[:space:]]*[0-9]\{1,\}\.[0-9]\{1,\}\.[0-9]\{1,\}[[:space:]]*$/ h;${g;p;}')

rbenv install ${VERSION}

rbenv rehash

rbenv global ${VERSION}

gem install bundler rails
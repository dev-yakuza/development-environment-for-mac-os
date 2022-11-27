# !/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install via brew
brew bundle --file=./Brewfile

sudo xattr -dr com.apple.quarantine /Applications/MySQLWorkbench.app
open /Applications/MySQLWorkbench.app
sudo xattr -dr com.apple.quarantine /Applications/Postman.app
open /Applications/Postman.app
sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
open /Applications/Google\ Chrome.app
sudo xattr -dr com.apple.quarantine /Applications/firefox.app
open /Applications/firefox.app
sudo xattr -dr com.apple.quarantine /Applications/Android\ Studio.app
open /Applications/Android\ Studio.app
sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
open /Applications/iTerm.app
sudo xattr -dr com.apple.quarantine /Applications/Cyberduck.app
open /Applications/Cyberduck.app
sudo xattr -dr com.apple.quarantine /Applications/meld.app
open /Applications/meld.app
sudo xattr -dr com.apple.quarantine /Applications/docker.app
open /Applications/docker.app
sudo xattr -dr com.apple.quarantine /Applications/dbeaver.app
open /Applications/dbeaver.app
sudo xattr -dr com.apple.quarantine /Applications/figma.app
open /Applications/figma.app
sudo xattr -dr com.apple.quarantine /Applications/Karabiner-Elements.app
open /Applications/Karabiner-Elements.app

open /Applications/slack.app
open /Applications/kakaotalk.app
open /Applications/line.app

# install font
cp -a ./fonts/. ~/Library/Fonts

# Ruby
chmod 755 ./ruby/install.sh
./ruby/install.sh

# Node
chmod 755 ./node/install.sh
./node/install.sh

# configure zsh
chmod 755 ./zsh/install.sh
./zsh/install.sh

# configure VSCode
chmod 755 ./vscode/install.sh
./vscode/install.sh

# copy iterm2 configuration
chmod 755 ./iterm2/install.sh
./iterm2/install.sh

# install jekyll
chmod 755 ./jekyll/install.sh
./jekyll/install.sh

# install react-native
chmod 755 ./react-native/install.sh
./react-native/install.sh

# install xcode
chmod 755 ./xcode/install.sh
./xcode/install.sh

# download docker desktop
open /Applications/Google\ Chrome.app https://www.docker.com/products/docker-desktop

# install fastlane
gem install fastlane -NV

# configure redis
chmod 755 ./redis/install.sh
./redis/install.sh

# Laravel
chmod 755 ./laravel/install.sh
./laravel/install.sh

# Set screenshot folder
chmod 755 ./screenshot/install.sh
./screenshot/install.sh

# Install Flutter
chmod 755 ./flutter/install.sh
./flutter/install.sh

# Install Infra
chmod 755 ./infra/install.sh
./infra/install.sh

# Install go
chmod 755 ./go/install.sh
./go/install.sh

# Change Git Default branch name
git config --global init.defaultBranch main
git config core.ignorecase false

# copy keybindings
cp -R ./KeyBindings ~/Library/
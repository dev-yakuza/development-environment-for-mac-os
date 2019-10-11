# !/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install via brew
brew bundle --file=./Brewfile

sudo xattr -dr com.apple.quarantine /Applications/Sequel\ Pro.app
open /Applications/Sequel\ Pro.app
sudo xattr -dr com.apple.quarantine /Applications/DB\ Browser\ for\ SQLite.app
open /Applications/DB\ Browser\ for\ SQLite.app
sudo xattr -dr com.apple.quarantine /Applications/MySQLWorkbench.app
open /Applications/MySQLWorkbench.app
sudo xattr -dr com.apple.quarantine /Applications/Sketch.app
open /Applications/Sketch.app
sudo xattr -dr com.apple.quarantine /Applications/Postman.app
open /Applications/Postman.app
sudo xattr -dr com.apple.quarantine /Applications/Sourcetree.app
open /Applications/Sourcetree.app
sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
open /Applications/Google\ Chrome.app
sudo xattr -dr com.apple.quarantine /Applications/Android\ Studio.app
open /Applications/Android\ Studio.app
sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
open /Applications/iTerm.app

# install font
cp -a ./fonts/. ~/Library/Fonts

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

# install android sdk
chmod 755 ./android-studio/install.sh

# install xcode
chmod 755 ./xcode/install.sh
./xcode/install.sh

# install python3
chmod 755 ./python/install.sh
./python/install.sh

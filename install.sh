# !/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install via brew
brew bundle --file=./Brewfile

# install font
cp ./fonts/. ~/Library/Fonts

# configure zsh
./zsh/install.sh

# configure VSCode
./vscode/install.sh

# copy iterm2 configuration
./iterm2/install.sh

# install jekyll
./jekyll/install.sh

# install react-native
./react-native/install.sh

# install android sdk
./android-studio/install.sh

# install python3
./python/install.sh
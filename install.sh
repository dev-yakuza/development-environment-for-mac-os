# !/bin/bash
echo "Install brew"
echo "Start ###########################################################"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "End #############################################################"


echo "Install apps by brew"
echo "Start ###########################################################"

while ! brew bundle --file=./Brewfile
do
    sleep 10
done

echo "End #############################################################"


echo "Environments"
echo "Start ###########################################################"

cp -a ./fonts/. ~/Library/Fonts

chmod 755 ./screenshot/install.sh
./screenshot/install.sh

git config --global init.defaultBranch main
git config core.ignorecase false

cp ./KeyBindings/DefaultkeyBinding.dict ~/Library/DefaultkeyBinding.dict
rm -rf ~/.config/karabiner/
mkdir -p ~/.config/karabiner/
cp ./KeyBindings/karabiner.json ~/.config/karabiner/

rm -rf ~/Library/DBeaverData/
mkdir -p ~/Library/DBeaverData/workspace6/General/.dbeaver/
cp -R ./dbeaver/ ~/Library/DBeaverData/workspace6/General/.dbeaver/

rm -rf ~/Library/Application\ Support/Rectangle/
mkdir -p ~/Library/Application\ Support/Rectangle/
cp ./rectangle/RectangleConfig.json ~/Library/Application\ Support/Rectangle/RectangleConfig.json

echo "End #############################################################"


echo "Install Ruby"
echo "Start ###########################################################"

chmod 755 ./ruby/install.sh
./ruby/install.sh

echo "End #############################################################"


echo "Install zsh"
echo "Start ###########################################################"

chmod 755 ./zsh/install.sh
./zsh/install.sh
source ~/.zshrc

echo "End #############################################################"

echo "Install iTerms2"
echo "Start ###########################################################"

chmod 755 ./iterm2/install.sh
./iterm2/install.sh

echo "End #############################################################"


echo "Install Node"
echo "Start ###########################################################"

chmod 755 ./node/install.sh
./node/install.sh

echo "End #############################################################"


echo "Install VSCode"
echo "Start ###########################################################"

chmod 755 ./vscode/install.sh
./vscode/install.sh

echo "End #############################################################"


echo "Install React Native"
echo "Start ###########################################################"

chmod 755 ./react-native/install.sh
./react-native/install.sh

echo "End #############################################################"


echo "Install Flutter"
echo "Start ###########################################################"

chmod 755 ./flutter/install.sh
./flutter/install.sh

echo "End #############################################################"


echo "Install Laravel"
echo "Start ###########################################################"

chmod 755 ./laravel/install.sh
./laravel/install.sh

echo "End #############################################################"


echo "Install Golang"
echo "Start ###########################################################"

chmod 755 ./go/install.sh
./go/install.sh

echo "End #############################################################"


echo "Install Jekyll"
echo "Start ###########################################################"

chmod 755 ./jekyll/install.sh
./jekyll/install.sh

echo "End #############################################################"


echo "Install Fastlane"
echo "Start ###########################################################"

gem install fastlane -NV
rbenv rehash

echo "End #############################################################"


echo "Install Xcode"
echo "Start ###########################################################"

chmod 755 ./xcode/install.sh
./xcode/install.sh

echo "End #############################################################"

echo "Keep in Dock"
echo "Start ###########################################################"

chmod 755 ./macos/dock.sh
./macos/dock.sh

echo "End #############################################################"

echo "Congiguration for Mac"
echo "Start ###########################################################"

chmod 755 ./macos/dock.sh
./macos/dock.sh

chmod 755 ./macos/touchpad.sh
./macos/touchpad.sh

echo "End #############################################################"


echo "Open app for settings"
echo "Start ###########################################################"

sudo xattr -dr com.apple.quarantine /Applications/Karabiner-Elements.app
open /Applications/Karabiner-Elements.app

sudo xattr -dr com.apple.quarantine /Applications/Rectangle.app
open /Applications/Rectangle.app

sudo xattr -dr com.apple.quarantine /Applications/Android\ Studio.app
open /Applications/Android\ Studio.app

echo "End #############################################################"

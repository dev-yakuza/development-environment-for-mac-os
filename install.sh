# !/bin/bash
sudo pmset -c disablesleep 1

echo "Install brew"
echo "Start ###########################################################"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "End #############################################################"


echo "Install apps by brew"
echo "Start ###########################################################"

brew bundle --file=./Brewfile
# Some apps not installed at the first time
brew bundle --file=./Brewfile

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

echo "End #############################################################"

echo "Install iTerms2"
echo "Start ###########################################################"

chmod 755 ./iterm2/install.sh
zsh ./iterm2/install.sh

echo "End #############################################################"


echo "Install Node"
echo "Start ###########################################################"

chmod 755 ./node/install.sh
zsh ./node/install.sh

echo "End #############################################################"


echo "Install VSCode"
echo "Start ###########################################################"

chmod 755 ./vscode/install.sh
zsh ./vscode/install.sh

echo "End #############################################################"


echo "Install React Native"
echo "Start ###########################################################"

chmod 755 ./react-native/install.sh
zsh ./react-native/install.sh

echo "End #############################################################"


echo "Install Flutter"
echo "Start ###########################################################"

chmod 755 ./flutter/install.sh
zsh ./flutter/install.sh

echo "End #############################################################"


echo "Install Laravel"
echo "Start ###########################################################"

chmod 755 ./laravel/install.sh
zsh ./laravel/install.sh

echo "End #############################################################"


echo "Install Golang"
echo "Start ###########################################################"

chmod 755 ./go/install.sh
zsh ./go/install.sh

echo "End #############################################################"


echo "Install Jekyll"
echo "Start ###########################################################"

chmod 755 ./jekyll/install.sh
zsh ./jekyll/install.sh

echo "End #############################################################"


echo "Install Fastlane"
echo "Start ###########################################################"

gem install fastlane -NV
rbenv rehash

echo "End #############################################################"


echo "Install Xcode"
echo "Start ###########################################################"

chmod 755 ./xcode/install.sh
zsh ./xcode/install.sh

echo "End #############################################################"

echo "Keep in Dock"
echo "Start ###########################################################"

chmod 755 ./macos/dock.sh
./macos/dock.sh

echo "End #############################################################"

echo "Congiguration for Mac"
echo "Start ###########################################################"

chmod 755 ./macos/dock.sh
zsh ./macos/dock.sh

chmod 755 ./macos/touchpad.sh
zsh ./macos/touchpad.sh

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

echo "Please change wallpaper"
echo "Right click on the desktop -> Change Wallpaper... -> Select Black color"

echo "Please change keyboard shortcuts by yourself."
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Input Sources -> Select the previous input source -> Change to Command + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Input Sources -> Select Next source input menu -> Change to Command + Shift + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Spotlight -> Show Spotlight search -> Change to Option + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Spotlight -> Show Finder search window -> Change to Command + Option + Space"

echo "Optimize."
echo "Oepn System Settings -> Accessibility -> Enable 'Reduce motion' and 'Reduce transparency'"
echo "Oepn System Settings -> Spotlight -> Disable all without Applications"

sudo pmset -c disablesleep 0

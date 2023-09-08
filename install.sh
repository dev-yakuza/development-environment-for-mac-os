# !/bin/bash

echo "1. Install brew"
echo "Start ###########################################################"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "End #############################################################"


echo "2. Install apps by brew"
echo "Start ###########################################################"

while ! brew bundle --file=./Brewfile
do
    sleep 10
done

echo "End #############################################################"


echo "3. Environments"
echo "Start ###########################################################"

cp -a ./fonts/. ~/Library/Fonts

chmod 755 ./screenshot/install.sh
./screenshot/install.sh

git config --global init.defaultBranch main
git config core.ignorecase false

cp ./KeyBindings/DefaultkeyBinding.dict ~/Library/DefaultkeyBinding.dict
cp ./KeyBindings/karabiner.json ~/.config/karabiner/

cp -R ./dbeaver/ /Users/${USER}/Library/DBeaverData/workspace6/General/.dbeaver/

mkdir /Users/${USER}/Library/Application\ Support/Rectangle/
cp ./rectangle/RectangleConfig.json /Users/${USER}/Library/Application\ Support/Rectangle/RectangleConfig.json

cp ./macos/com.apple.driver.AppleBluetoothMultitouch.mouse.plist ~/Library/Preferences/com.apple.driver.AppleBluetoothMultitouch.mouse.plist
cp ./macos/com.apple.driver.AppleBluetoothMultitouch.trackpad.plist ~/Library/Preferences/com.apple.driver.AppleBluetoothMultitouch.trackpad.plist
cp ./macos/com.apple.driver.AppleHIDMouse.plist ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist
cp ./macos/StandardKeyBinding.dict ~/System/Library/Frameworks/AppKit.framework/Resources/StandardKeyBinding.dict

echo "End #############################################################"


echo "4. Install Ruby"
echo "Start ###########################################################"

chmod 755 ./ruby/install.sh
while ! ./ruby/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "5. Install zsh"
echo "Start ###########################################################"

chmod 755 ./zsh/install.sh
while ! ./zsh/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "6. Install iTerms2"
echo "Start ###########################################################"

chmod 755 ./iterm2/install.sh
while ! ./iterm2/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "7. Install Node"
echo "Start ###########################################################"

chmod 755 ./node/install.sh
while ! ./node/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "8. Install VSCode"
echo "Start ###########################################################"

chmod 755 ./vscode/install.sh
while ! ./vscode/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "9. Install React Native"
echo "Start ###########################################################"

chmod 755 ./react-native/install.sh
while ! ./react-native/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "10. Install Flutter"
echo "Start ###########################################################"

chmod 755 ./flutter/install.sh
while ! ./flutter/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "11. Install Laravel"
echo "Start ###########################################################"

chmod 755 ./laravel/install.sh
while ! ./laravel/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "12. Install Golang"
echo "Start ###########################################################"

chmod 755 ./go/install.sh
while ! ./go/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "13. Install Jekyll"
echo "Start ###########################################################"

chmod 755 ./jekyll/install.sh
while ! ./jekyll/install.sh
do
    sleep 10
done

echo "End #############################################################"


echo "14. Install Fastlane"
echo "Start ###########################################################"

gem install fastlane -NV
rbenv rehash

echo "End #############################################################"


echo "15. Install Xcode"
echo "Start ###########################################################"

chmod 755 ./xcode/install.sh
./xcode/install.sh

echo "End #############################################################"

echo "16. Keep in Dock"
echo "Start ###########################################################"

defaults write com.apple.dock persistent-apps -array
sleep 10
apps=(
  "/System/Applications/Launchpad.app"
  "/Applications/Google Chrome.app"
  "/Applications/Firefox.app"
  "/System/Volumes/Preboot/Cryptexes/App/System/Applications/Safari.app"
  "/Applications/Microsoft Edge.app"
  "/Applications/iTerm.app"
  "/Applications/Visual Studio Code.app"
  "/Applications/DBeaver.app"
  "/Applications/Slack.app"
  "/Applications/KakaoTalk.app"
  "/Applications/LINE.app"
  "/Applications/MySQLWorkbench.app"
  "/Applications/Figma.app"
  "/Applications/Postman.app"
  "/Applications/Cyberduck.app"
  "/Applications/Karabiner-Elements.app"
  "/System/Library/CoreServices/Applications/Screen Sharing.app"
)
for app in "${apps[@]}"; do
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>${app}</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done
sleep 10
killall Dock

echo "End #############################################################"

sudo xattr -dr com.apple.quarantine /Applications/Android\ Studio.app
open /Applications/Android\ Studio.app

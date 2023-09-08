# !/bin/bash

RED="\e[31m"
END_COLOR="\e[0m"

echo -e "${RED}1. Install brew${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}2. Install apps by brew${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

while ! brew bundle --file=./Brewfile
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}3. Environments${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

cp -a ./fonts/. ~/Library/Fonts

chmod 755 ./screenshot/install.sh
./screenshot/install.sh

git config --global init.defaultBranch main
git config core.ignorecase false

cp -R ./KeyBindings ~/Library/

cp -R ./dbeaver/ /Users/${USER}/Library/DBeaverData/workspace6/General/.dbeaver/

mkdir /Users/${USER}/Library/Application\ Support/Rectangle/
cp ./rectangle/RectangleConfig.json /Users/${USER}/Library/Application\ Support/Rectangle/RectangleConfig.json

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}4. Install Ruby${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./ruby/install.sh
while ! ./ruby/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}5. Install zsh${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./zsh/install.sh
while ! ./zsh/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}6. Install iTerms2${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./iterm2/install.sh
while ! ./iterm2/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}7. Install VSCode${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./vscode/install.sh
while ! ./vscode/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}8. Install Node${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./node/install.sh
while ! ./node/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}9. Install React Native${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./react-native/install.sh
while ! ./react-native/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}10. Install Flutter${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./flutter/install.sh
while ! ./flutter/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}11. Install Laravel${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./laravel/install.sh
while ! ./laravel/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}12. Install Golang${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./go/install.sh
while ! ./go/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}13. Install Jekyll${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./jekyll/install.sh
while ! ./jekyll/install.sh
do
    sleep 10
done

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}14. Install Fastlane${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

gem install fastlane -NV
rbenv rehash

echo -e "${RED}End #############################################################${END_COLOR}"


echo -e "${RED}15. Install Xcode${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

chmod 755 ./xcode/install.sh
./xcode/install.sh

echo -e "${RED}End #############################################################${END_COLOR}"

echo -e "${RED}16. Keep in Dock${END_COLOR}"
echo -e "${RED}Start ###########################################################${END_COLOR}"

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

echo -e "${RED}End #############################################################${END_COLOR}"

sudo xattr -dr com.apple.quarantine /Applications/Android\ Studio.app
open /Applications/Android\ Studio.app

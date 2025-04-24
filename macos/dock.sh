defaults write com.apple.dock show-recents -bool false

defaults write com.apple.dock persistent-apps -array
sleep 10
killall Dock
apps=(
  "/System/Applications/Launchpad.app"
  "/Applications/Google Chrome.app"
  "/Applications/Firefox.app"
  "/Applications/Safari.app"
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
  sleep 10
done

defaults write com.apple.dock mineffect -string scale
defaults write com.apple.dock autohide -bool false

sleep 10
killall Dock

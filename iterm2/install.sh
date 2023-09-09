# !/bin/bash

# Specify the preferences directory
mkdir -p ~/.config/iterm2/custom/
cp ./iterm2/com.googlecode.iterm2.plist ~/.config/iterm2/custom/

defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.config/iterm2/custom/"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

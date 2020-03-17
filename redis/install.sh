ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

# stop redis
# launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

# remove redis
# brew uninstall redis
# rm ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
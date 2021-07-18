export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# install latest node
# nvm install node

nvm install v12.16.1
brew install yarn

# install git open
npm install --global git-open
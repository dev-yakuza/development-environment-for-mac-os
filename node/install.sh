export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# install latest node
# nvm install node

nvm install v12.16.1
brew install yarn

npm install --global git-open
npm install -g create-react-app
npm install -g create-next-app
npm install -g redoc-cli
# redoc-cli bundle -o index.html swagger.yaml

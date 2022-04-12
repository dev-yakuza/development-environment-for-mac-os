export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# install latest node
# nvm install node

nvm install v12.16.1
brew install yarn

# install git open
npm install --global git-open

# create-react-app
npm install -g create-react-app

# For Swagger UI
npm install -g redoc-cli
# redoc-cli bundle -o index.html swagger.yaml

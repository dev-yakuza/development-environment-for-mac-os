export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# install latest node
# nvm install node

nvm install 14.17.5
nvm install 20.3.0
nvm alias default 20.3.0

npm install --global git-open
npm install -g create-react-app
npm install -g create-next-app
npm install -g redoc-cli
npm install -g yarn
# redoc-cli bundle -o index.html swagger.yaml

source ~/.zshrc

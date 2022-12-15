# !/bin/bash

sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app

# install vscode extensions
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension esbenp.prettier-vscode
code --install-extension fterrag.vscode-php-cs-fixer
code --install-extension gencer.html-slim-scss-css-class-completion
code --install-extension jcbuisson.vue
code --install-extension leizongmin.node-module-intellisense
code --install-extension mf.vscode-styled-components
code --install-extension ms-python.python
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension redhat.vscode-yaml
code --install-extension RoscoP.ActiveFileInStatusBar
code --install-extension shardulm94.trailing-spaces
code --install-extension vscode-icons-team.vscode-icons
code --install-extension johnuphoff.vscode-styled-sort
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension onecentlin.laravel5-snippets
code --install-extension onecentlin.laravel-blade
code --install-extension ryannaddy.laravel-artisan
code --install-extension dbaeumer.vscode-eslint
code --install-extension rebornix.ruby
code --install-extension kaiwood.endwise
code --install-extension misogi.ruby-rubocop
code --install-extension pnp.polacode
code --install-extension editorconfig.editorconfig
code --install-extension formulahendry.auto-rename-tag
code --install-extension devzstudio.emoji-snippets
code --install-extension eamodio.gitlens
code --install-extension jebbs.plantuml
code --install-extension mechatroner.rainbow-csv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode-remote.remote-containers
code --install-extension mutantdino.resourcemonitor
code --install-extension ryu1kn.partial-diff
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension wingrunr21.vscode-ruby
code --install-extension dart-code.flutter
code --install-extension sleistner.vscode-fileutils
code --install-extension hashicorp.terraform
code --install-extension octref.vetur
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension ms-vscode.powershell
code --install-extension arjun.swagger-viewer
code --install-extension mrmlnc.vscode-remark
code --install-extension flutterando.flutter-coverage
code --install-extension unifiedjs.vscode-mdx
code --install-extension ritwickdey.LiveServer
code --install-extension hediet.vscode-drawio

# copy vscode settings
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# toc
git clone https://github.com/dev-yakuza/markdown-toc.git ~/.vscode/extensions/markdown-toc
cd ~/.vscode/extensions/markdown-toc && npm install
cd ~/.vscode/extensions/markdown-toc && npm run vscode:prepublish
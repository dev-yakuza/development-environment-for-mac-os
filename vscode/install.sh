# !/bin/bash

sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app

# install vscode extensions
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension esbenp.prettier-vscode
code --install-extension fterrag.vscode-php-cs-fixer
code --install-extension gencer.html-slim-scss-css-class-completion
code --install-extension Vue.volar
code --install-extension leizongmin.node-module-intellisense
code --install-extension mf.vscode-styled-components
code --install-extension ms-python.python
code --install-extension redhat.vscode-yaml
code --install-extension RoscoP.ActiveFileInStatusBar
code --install-extension shardulm94.trailing-spaces
code --install-extension vscode-icons-team.vscode-icons
code --install-extension johnuphoff.vscode-styled-sort
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension onecentlin.laravel-blade
code --install-extension ryannaddy.laravel-artisan
code --install-extension dbaeumer.vscode-eslint
code --install-extension stylelint.vscode-stylelint
code --install-extension rebornix.ruby
code --install-extension kaiwood.endwise
code --install-extension misogi.ruby-rubocop
code --install-extension pnp.polacode
code --install-extension editorconfig.editorconfig
code --install-extension formulahendry.auto-rename-tag
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
code --install-extension arjun.swagger-viewer
code --install-extension flutterando.flutter-coverage
code --install-extension unifiedjs.vscode-mdx
code --install-extension ritwickdey.LiveServer
code --install-extension hediet.vscode-drawio
code --install-extension mathiasfrohlich.Kotlin
code --install-extension GitHub.vscode-github-actions
code --install-extension huntertran.auto-markdown-toc
code --install-extension mhutchie.git-graph
code --install-extension solomonkinard.git-blame
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension vscjava.vscode-gradle
code --install-extension ms-playwright.playwright

# copy vscode settings
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

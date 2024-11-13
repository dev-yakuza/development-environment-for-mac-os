# !/bin/bash

sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app

# install vscode extensions
code --install-extension amiralizadeh9480.laravel-extra-intellisense
code --install-extension arjun.swagger-viewer
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension Cardinal90.multi-cursor-case-preserve
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension ctf0.laravel-goto-controller
code --install-extension dart-code.flutter
code --install-extension dbaeumer.vscode-eslint
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension ecmel.vscode-html-css
code --install-extension editorconfig.editorconfig
code --install-extension esbenp.prettier-vscode
code --install-extension flutterando.flutter-coverage
code --install-extension formulahendry.auto-rename-tag
code --install-extension fterrag.vscode-php-cs-fixer
code --install-extension gencer.html-slim-scss-css-class-completion
code --install-extension GitHub.vscode-github-actions
code --install-extension hashicorp.terraform
code --install-extension hediet.vscode-drawio
code --install-extension huntertran.auto-markdown-toc
code --install-extension hzgood.dart-data-class-generator
code --install-extension jebbs.plantuml
code --install-extension jeroen-meijer.pubspec-assist
code --install-extension johnuphoff.vscode-styled-sort
code --install-extension kaiwood.endwise
code --install-extension leizongmin.node-module-intellisense
code --install-extension mathiasfrohlich.Kotlin
code --install-extension mechatroner.rainbow-csv
code --install-extension mehedidracula.php-namespace-resolver
code --install-extension mf.vscode-styled-components
code --install-extension mhutchie.git-graph
code --install-extension mikestead.dotenv
code --install-extension misogi.ruby-rubocop
code --install-extension mrmlnc.vscode-scss
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-playwright.playwright
code --install-extension ms-python.python
code --install-extension ms-vscode-remote.remote-containers
code --install-extension mutantdino.resourcemonitor
code --install-extension octref.vetur
code --install-extension oderwat.indent-rainbow
code --install-extension onecentlin.laravel-blade
code --install-extension patbenatar.advanced-new-file
code --install-extension pflannery.vscode-versionlens
code --install-extension pnp.polacode
code --install-extension pranaygp.vscode-css-peek
code --install-extension rebornix.ruby
code --install-extension redhat.vscode-yaml
code --install-extension ritwickdey.LiveServer
code --install-extension RoscoP.ActiveFileInStatusBar
code --install-extension ryannaddy.laravel-artisan
code --install-extension ryu1kn.partial-diff
code --install-extension shardulm94.trailing-spaces
code --install-extension sleistner.vscode-fileutils
code --install-extension solomonkinard.git-blame
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension stylelint.vscode-stylelint
code --install-extension unifiedjs.vscode-mdx
code --install-extension usernamehw.errorlens
code --install-extension vscjava.vscode-gradle
code --install-extension vscode-icons-team.vscode-icons
code --install-extension Vue.volar
code --install-extension wayou.vscode-todo-highlight
code --install-extension wingrunr21.vscode-ruby
code --install-extension Zignd.html-css-class-completion

# copy vscode settings
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

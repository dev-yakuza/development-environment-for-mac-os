# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  virtualenv
)

# python virtualenv
export PATH="/opt/homebrew/opt/openssl@3.4/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@3.4/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@3.4/include"

# For Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export CFLAGS=""
RUBYOPT='-W:no-deprecated -W:no-experimental'
alias bundler=$HOME/.rbenv/shims/bundler
alias ruby=$HOME/.rbenv/shims/ruby
alias bundle=$HOME/.rbenv/shims/bundle
# alias gem=$HOME/.rbenv/shims/gem
export GEM_HOME="$HOME/.gem"
export GEM_PATH="$HOME/.gem"
alias rails=$HOME/.rbenv/shims/rails
alias rake=$HOME/.rbenv/shims/rake

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# remove user name in zsh
# prompt_context(){}
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir_writable dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

# vscode code command
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# brew path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# python3 default
alias python=python3
alias pip=pip3
# pyenv setting
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# pyenv-virtualenv setting
eval "$(pyenv virtualenv-init -)"

# phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
export CC="/usr/bin/gcc"
export CXX="/usr/bin/g++"
export CXXFLAGS="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/"
export PHP_BUILD_CONFIGURE_OPTS="--with-tidy=$(brew --prefix tidy-html5) --with-bz2=$(brew --prefix bzip2) --with-iconv=$(brew --prefix libiconv)"

eval "$(phpenv init -)"

# composer
alias php="$HOME/.phpenv/shims/php"
alias composer="php /usr/local/bin/composer"
# Laravel
export PATH="$HOME/.composer/vendor/bin:$PATH"
# mysql
# export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"


# Android path for React Native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# postgresql
export PGDATA='/usr/local/var/postgres'

export GIT_MERGE_AUTOEDIT=no

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# For work
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Flutter
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/fvm/default/bin"
alias flutter="fvm flutter"

# go
# export GOROOT="$(brew --prefix golang)/libexec"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
# alias go=~/.goenv/shims/go

# JDK
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
export PATH="/usr/local/opt/openjdk@18/bin:$PATH"
export alias java=/Users/$USER/.jenv/shims/java

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/j-kim/.dart-cli-completion/zsh-config.zsh ]] && . /Users/j-kim/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
export PATH="/Users/j-kim/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/j-kim/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

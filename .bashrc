# Reload this file
alias reload='source ~/.bashrc'

# General aliases
alias ..="cd .."
alias ts="termrc start"

# Git aliases
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias gds="git diff --staged"
alias gdc="git diff --cached"
alias ga="git add"
alias gap="git add -p"
alias gan="git add -N"
alias gc='git commit'
alias gcm="git commit --message"
alias gp="git push"
alias gpr="git pull --rebase"
alias gco="git checkout"
alias gb="git branch"
alias gu="git reset HEAD"

# Rust aliases
alias cg="cargo"
alias cgb="cargo build"
alias cgr="cargo run"
alias cgc="cargo clean"
alias cgu="cargo update"
alias cgt="cargo test"
alias rs="rustc"
alias rsv="rustc --version"
alias mr="multirust"
alias mrd="multirust default"

# Ruby aliases
alias be="bundle exec"
alias ber="bundle exec rake"
alias bert="bundle exec rake -T"

# DynamoDB
alias dynamo="cd ~/dynamodb_local && java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb"

# Needed for racer (rust autocompletion)
export RUST_SRC_PATH="~/code/rust/src"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Docker
export DOCKER_HOST="tcp://192.168.59.103:2375"

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# Golang
export GOPATH="/users/cjacks/code/go"
export PATH="$PATH:$GOPATH/bin"

# Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

# NPM
export PATH="$PATH:$HOME/.npm-packages/bin"

# NVM
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# Editor:
export VISUAL="vim"
export EDITOR="$VISUAL"

# Misc
export CLICOLOR=1
export LSCOLORS="Exfxcxdxbxegedabagacad"

# RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Unknown
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# home bin
export PATH="$PATH:$HOME/bin"

# Secrets
. ~/bin/secrets.sh

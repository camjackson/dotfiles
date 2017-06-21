# Reload this file
alias reload='source ~/.bashrc'

# General aliases
alias ..="cd .."
alias ts="termrc start"

# Vagrant aliases
alias va="vagrant"
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vh="vagrant halt"

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
alias gca="git commit --amend"
alias gp="git push"
alias gpr="git pull --rebase"
alias gco="git checkout"
alias gb="git branch"
alias gu="git reset HEAD"
alias stash="git stash"
alias pop="git stash pop"
alias gcl="git clone"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# yarn
alias y="yarn"

# Rust aliases
alias cg="cargo"
alias cgb="cargo build"
alias cgr="cargo run"
alias cgc="cargo clean"
alias cgu="cargo update"
alias cgt="cargo test"
alias rs="rustc"
alias rsv="rustc --version"

# Ruby aliases
alias be="bundle exec"
alias ber="bundle exec rake"
alias bert="bundle exec rake -T"

# Docker
alias doco="docker-compose"

# Terraform
alias tf="terraform"

# DynamoDB
alias dynamo="cd ~/dynamodb_local && java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb"

# Needed for racer (rust autocompletion)
export RUST_SRC_PATH="~/code/rust/src"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

# NPM
export PATH="$PATH:$HOME/.npm-packages/bin"

# NVM
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# Rust/Cargo
export PATH="$HOME/.cargo/bin:$PATH"

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
# export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# home bin
export PATH="$PATH:$HOME/bin"

# Secrets
. ~/bin/secrets.sh

# Find which process is using a port:
function port() {
  lsof -n -i4TCP:$1 | grep LISTEN
}


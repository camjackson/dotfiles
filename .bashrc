# Make zsh more like bash
setopt NO_BEEP NO_AUTOLIST BASH_AUTOLIST  NO_AUTO_MENU
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# Reload this file
alias reload='source ~/.bashrc'

# General aliases
alias ..="cd .."
alias a.="atom ."
alias diff="colordiff"

# Git aliases
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias gdw="git diff -w"
alias gds="git diff --staged"
alias gdc="git diff --cached"
alias ga="git add"
alias gap="git add -p"
alias gan="git add -N"
alias gc='git commit'
alias gcm="git commit --message"
alias gca="git commit --amend"
alias gp="git push"
alias gpu="git push --set-upstream"
alias gpr="git pull --rebase"
alias grb="git rebase"
alias grbc="git rebase --continue"
alias gco="git checkout"
alias gb="git branch"
alias gbd="git branch -D"
alias gu="git reset HEAD"
alias stash="git stash"
alias pop="git stash pop"
alias grv="git remote -v"
alias gcl="git clone"
function ghcl() {
  git clone git@github.com:${1}/${2}
}

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Rust aliases
alias cg="cargo"
alias cgb="cargo build"
alias cgr="cargo run"
alias cgc="cargo clean"
alias cgu="cargo update"
alias cgt="cargo test"
alias cgw="cargo watch -cqx"
alias rs="rustc"
alias rsv="rustc --version"

# Ruby aliases
alias be="bundle exec"
alias ber="bundle exec rake"
alias bert="bundle exec rake -T"

# Docker
alias doco="docker-compose"
alias drm="docker ps -aq | xargs docker rm -f"
alias dps="docker ps -a"

# Terraform
alias tf="terraform"

# Needed for racer (rust autocompletion)
export RUST_SRC_PATH=~/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src

# OpenSSL header paths etc (needed for some rust stuff)
# Ideally "/usr/local/opt/openssl" should come from `brew --prefix openssl` but it is slow
export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include
export OPENSSL_LIB_DIR=/usr/local/opt/openssl/lib
export DEP_OPENSSL_INCLUDE=/usr/local/opt/openssl/include

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 10`

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

# NPM
export PATH="$PATH:$HOME/.npm-packages/bin"

# NVM
export NVM_DIR=~/.nvm
# Ideally "/usr/local/opt/nvm" should come from `brew --prefix nvm` but it is slow
# . /usr/local/opt/nvm/nvm.sh

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

# home bin
export PATH="$PATH:$HOME/bin"

# Find which process is using a port:
function port() {
  lsof -n -i4TCP:$1 | grep LISTEN
}

# Autocompletion for cage
#source ~/code/dotfiles/cage.bash-completion

#VSCode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Make zsh more like bash
setopt NO_BEEP NO_AUTOLIST BASH_AUTOLIST  NO_AUTO_MENU
setopt interactivecomments
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# Reload this file
alias reload='source ~/.bashrc'

# General aliases
alias ..="cd .."
alias a.="atom ."
alias diff="colordiff"
alias c.="code ."

# Git aliases
type git-together >/dev/null 2>&1 && alias git=git-together
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
alias gcaq="git commit --amend --no-edit --no-verify" #q = quick
alias gp="git push"
alias gpu="git push --set-upstream"
alias gpr="git pull --rebase --autostash"
alias grb="git rebase --autostash"
alias grbi="git rebase --interactive"
alias grbc="git rebase --continue"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gm="git merge"
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

# Yarn
alias yws="yarn workspace"
alias ywsf="yarn workspace frontend"
alias ywsb="yarn workspace backend"

# Pulumi
alias plm="pulumi"
alias pup="pulumi up"
export PULUMI_CONFIG_PASSPHRASE=

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
BUILDKIT_STEP_LOG_MAX_SIZE=-1
BUILDKIT_STEP_LOG_MAX_SPEED=-1

# Terraform
alias tf="terraform"

# Needed for racer (rust autocompletion)
export RUST_SRC_PATH=~/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src

# OpenSSL header paths etc (needed for some rust stuff)
# Ideally "/usr/local/opt/openssl" should come from `brew --prefix openssl` but it is slow
#export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include
#export OPENSSL_LIB_DIR=/usr/local/opt/openssl/lib
#export DEP_OPENSSL_INCLUDE=/usr/local/opt/openssl/include

# Java
#export JAVA_HOME=`/usr/libexec/java_home -v 10`

# NPM
export PATH="$PATH:$HOME/.npm-packages/bin"

# NVM
export NVM_DIR=~/.nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

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

# Kill a process using a port (pk = portkill):
function pk() {
  port $1 | awk '{print $2}' | xargs -I {} bash -xc 'kill {}'
}

# Autocompletion for cage
#source ~/code/dotfiles/cage.bash-completion

#VSCode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Reece AWS Okta login
function awslogin () {
    local ACCOUNT=$1
    if [ -z "${1}" ] ; then
        echo 'No profile name given, assuming digital-nonprod'
        ACCOUNT=digital-nonprod
    fi
    local env_vars
    local exit_status
    env_vars="$(aws-okta env "${ACCOUNT}" -t 8h0m0s --mfa-factor-type push)"
    exit_status=$?

    if [ $exit_status -eq 0 ] ; then
        export $(echo "${env_vars}")
    else
        $(exit $exit_status)
    fi
}


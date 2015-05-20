# Default workdir
cd ~/code

# Aliases
alias cg=cargo
alias cgb="cargo build"
alias cgr="cargo run"
alias cgc="cargo clean"
alias cgu="cargo update"
alias cgt="cargo test"
alias rs=rustc
alias rsv="rustc --version"
alias mr=multirust
alias mrd="multirust default"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# Docker
export DOCKER_HOST=tcp://192.168.59.103:2375

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

#Golang
export GOPATH="/users/cjacks/code/go"
export PATH="$PATH:$GOPATH/bin"A

#Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

#Textmate
export PATH="/Applications/TextMate.app/Contents/Resources:$PATH"

# Misc
export CLICOLOR=1

#Unknown
export PATH=/usr/local/bin:/usr/local/sbin:$PATH


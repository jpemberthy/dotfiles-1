source ~/.alias
source ~/.git-prompt.sh
source ~/.env

export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=20000
export PS1='\n\[\e[33m\]\w\033[36m\]$(__git_ps1 " (%s)")\[\033[00m\]\n$ '
export EDITOR="emacsclient"
export PATH=$PATH:/usr/local/bin:/usr/bin:/usr/local/sbin:/Applications/Emacs.app/Contents/MacOS/bin
export RUBY_GC_MALLOC_LIMIT=60000000
export NODE_PATH=/usr/local/lib/node
export LANG="en_US.UTF-8"
export GOPATH=~/.go/
export PATH=$PATH:$HOME/.rvm/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin
shopt -s histappend

function sgm {
    rails g migration $@ | grep create  | awk '{print $3}' | xargs $EDITOR
}

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
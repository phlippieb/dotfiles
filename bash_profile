#. ~/.ps1s/yolo.sh

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias ll='ls -al'
alias la='ls -a'
alias l='ls'
test -f ~/.git-completion.bash && . $_

# path:
export PATH="$PATH":~/bin

alias fsh='~/fast-sh'

. ~/.bash_aliases
. ~/bin/server-aliases.sh

export speedtest10="http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR

# notes
#n() {
#        $EDITOR ~/notes/"$*".md
#}
#
#nls() {
#        ls -c ~/notes/ | grep "$*"
#}

. ~/.bashrc

# GOPATH
export GOPATH=~/.go
export PATH=$PATH:$GOPATH/bin

export PATH="$HOME/.fastlane/bin:$PATH"

#source ~/.profile
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# Sierra forgets ssh keys between reboots :(
ssh-add -A 2>/dev/null;

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH":/Users/phlippieb/.bundle/ruby/2.0.0/CocoaPods-d53f7fbba8b6/bin
#export PATH="/Users/phlippieb/.bundle/ruby/2.3.0/CocoaPods-d53f7fbba8b6/bin":"$PATH"

# Liquid prompt!
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt

fortune

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/phlippieb/google-cloud-sdk/path.bash.inc' ]; then source '/Users/phlippieb/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/phlippieb/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/phlippieb/google-cloud-sdk/completion.bash.inc'; fi

# Don't save duplicate commands in bash history -- so that pressing up doesn't bring up the same command more than once in a row
export HISTCONTROL=ignoreboth:erasedups


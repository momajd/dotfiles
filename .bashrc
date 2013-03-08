PROMPT_COLOR='\e[00m\e[38;05;166m'
export PS1='\['$PROMPT_COLOR'\]\w\$\[\e[0m\] '
export EDITOR=$EMACS

MILLION=1000000
export HISTFILESIZE=$MILLION
export HISTSIZE=$MILLION

# update bash history after each command
export PROMPT_COMMAND="history -a"

export MPORTS_DIR=/opt/local/bin:/opt/local/sbin
# prefer macports stuff
PATH=$MPORTS_DIR:$PATH
export EMACS='/opt/local/bin/emacs'

alias e=$EMACS
alias ls='ls --color=auto'
alias l='ls'

# I never remember to prefer pry
alias irb='pry'

source $CONF_DIR/git/git-aliases.bash
source $CONF_DIR/git/git-completion.bash

PATH=$PATH:$HOME/.rvm/bin
source ~/.rvm/scripts/rvm
source $rvm_path/scripts/completion

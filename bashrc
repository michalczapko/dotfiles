# Bash aliases
alias l='ls -l'
alias la="ls -Alh"
alias ..='cd ..'

# Rails aliases
alias sc='./script/console'
alias ss='./script/server'

# Rails aliases
alias gs='git status'
alias gc='git checkout'


# Set prompt to show git branch
parse_git_branch (){
  [`pwd | grep "work|Sites|Projects"` != ""] && git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git:\1)/'
}

export PS1='\[\033[0;33m\]\w\[\033[00m\]\[\033[01;00m\]$(parse_git_branch): '

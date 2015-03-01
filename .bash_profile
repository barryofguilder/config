# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/usr/local/git/bin:/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Tools
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias beans='/Applications/NetBeans/NetBeans\ 8.0.2.app/Contents/Resources/NetBeans/bin/netbeans'

## Shortcuts
alias ll='ls -al'
alias editbash='subl ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'

## Projects
alias butch='cd ~/Websites/butchers-market'
alias clip='cd ~/Development/clippity'
alias clipw='cd ~/Development/clippity-web'
alias prana='cd ~/Development/prana-server'

# MySql
export PATH=$PATH:/usr/local/mysql/bin

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

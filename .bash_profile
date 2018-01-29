# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch)\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput sgr0)\]"

export PATH=/usr/local/git/bin:/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Tools
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

## Shortcuts
alias ll='ls -al'
alias editbash='atom ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'

## Git commands
alias log='git log'
alias diff='git diff'
alias diffe='git diff -- . ":(exclude)package-lock.json"'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias add='git add --all'
alias cm='git commit -m'
alias co='git checkout'
alias rebase='git rebase -i'
alias reset='git reset --hard head'
alias recent='git recent'

## Projects
alias config='cd ~/Development/config'
alias butch='cd ~/Development/butchers-market'
alias rtp='cd ~/Development/RTP'
alias dops='cd ~/Development/data-ops-web-server'
alias dopsui='cd ~/Development/data-ops-web-client'

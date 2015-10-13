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
alias beans='/Applications/NetBeans/NetBeans\ 8.0.2.app/Contents/Resources/NetBeans/bin/netbeans'
code () {
  VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*
}

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
alias add='git add --all'
alias cm='git commit -m'
alias co='git checkout'

## Projects
alias butch='cd ~/Websites/butchers-market'
alias clip='cd ~/Development/clippity'
alias clipw='cd ~/Development/clippity-web'
alias prana='cd ~/Development/prana-server'
alias vcei='cd ~/Development/VCE/ios-application'
alias vceiw='cd ~/Development/VCE/ios-application/website'

# MySql
export PATH=$PATH:/usr/local/mysql/bin

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# ASP.NET
source dnvm.sh

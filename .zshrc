# Check out color chart here for PROMPT
# https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

# Path completion
autoload -Uz compinit && compinit

# Case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# Configure prompt with Git information
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
NEWLINE=$'\n'
PROMPT='%F{006}%~%f '\$vcs_info_msg_0_'${NEWLINE}%F{005}➜%f '
zstyle ':vcs_info:git:*' formats '%F{003}(%b)%f '

export PATH=/opt/homebrew/bin:$PATH

# Add token for GitHub packages
export NPM_TOKEN="token"

# Aliases

## Shortcuts
alias ll='ls -al'
alias editzsh='code ~/.zshrc'
alias resource='source ~/.zshrc && echo "Done!"'
alias bye='rm -rf node_modules dist tmp'

## Git commands
alias add='git add --all'
alias amend='git commit --amend --no-edit'
alias branch='git branch'
alias cherry='git cherry-pick'
alias cm='git commit -m'
alias co='git checkout'
alias diff='git diff'
alias diffe='git diff -- . ":(exclude)package-lock.json"'
alias fetch='git fetch'
alias log='git log'
alias pull='git pull'
alias push='git push origin head'
alias rebase='git rebase -i'
alias recent='git recent'
alias reset='git reset --hard head'
alias st='git status'
alias gitcred='git config --local credential.helper ""'
alias gitpwd='security delete-internet-password -l github.com'

## Personal Projects
alias butch='cd ~/Development/butchers-market'
alias butchapi='cd ~/Development/butchers-market-api'
alias config='cd ~/Development/config'

## Work Projects
alias bapi='cd ~/Development/blurple-api'
alias bui='cd ~/Development/blurple-ui'
alias doc='cd ~/workspace/reputation'
alias docui='cd ~/workspace/reputation/development/modules/com.digitalassent.docscores'
alias dops='cd ~/Development/data-ops-web-server'
alias dopsui='cd ~/Development/data-ops-web-client'
alias ods='cd ~/Development/odsdb'
alias rtp='cd ~/Development/RTP'
alias sapi='cd ~/Development/web-survey-api'
alias sui='cd ~/Development/web-survey-ui'
alias ui='cd ~/Development/ui-components'

## Logs into NRC AWS and then updates credentials file with new session token
alias awsrenew='aws sso login && python3 ~/Development/DevOps/AWS-SSO/aws_sso_config_credentials.py'

## Opens browser to Jira ticket
function jira() {
    if [ "$1" != "" ]; then
        open "https://nrc-eng.atlassian.net/browse/$1"
    else
        echo "Enter Jira ticket number"
    fi
}

## Kills the passed in port
function killport() {
    lsof -t -i tcp:$1 | xargs kill -9
}

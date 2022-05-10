# GENERAL SHELL ====================================================================================

# output path entries on separate lines
alias path='echo $PATH | tr -s ":" "\n"'

# export each item in a .env file
alias readenv='export $(grep -v "^#" .env | xargs -0)'

alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'

# Shortcuts ========================================================================================
# general purpose shortcuts for common files

alias b='bundle'
alias be='bundle exec'
alias r='rake'
alias v='vim'

# Directory ========================================================================================
# list directory contents (expands built in oh-my-zsh aliaes)

alias l.="ls -d .*"                          # List only hidden files
alias l="ls -lF"                             # List all files in long format
alias laf="ls -lAF"                          # List all files in long format, excluding . and ..
alias lf="ls -F"                             # List all files, directories have a '/'
alias lsd="ls -lF | grep --color=never '^d'" # List only directories

# Processes ========================================================================================
# utilities to manage running processes
alias psack='ps aux | grep' # process search helper

# DEVELOPMENT ======================================================================================

# run a server in the current directory
alias server='ruby -run -e httpd . -p 9090'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# NETWORKING =======================================================================================

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# External IP Address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Local IP Address
alias localip="ipconfig getifaddr en0"

# IP Addresses
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# ==================================================================================================

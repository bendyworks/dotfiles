# Shell ============================================================================================

# output path entries on separate lines
alias path='echo $PATH | tr -s ":" "\n"'

# export each item in a .env file
alias readenv='export $(grep -v "^#" .env | xargs -0)'

# Date =============================================================================================

alias now='date +"%T"'                       # print out time
alias nowdate='date +"%d-%m-%Y"'             # print out date

# Shortcuts ========================================================================================
# general purpose shortcuts for common files

alias b='bundle'
alias be='bundle exec'
alias r='rake'
alias v='vim'

# Directory ========================================================================================
# list directory contents
# NOTE: this extendsthe built-in oh-my-zsh aliaes

alias l.="ls -d .*"                          # List only hidden files
alias l="ls -lF"                             # List all files in long format
alias laf="ls -lAF"                          # List all files in long format, excluding . and ..
alias lf="ls -F"                             # List all files, directories have a '/'
alias lsd="ls -lF | grep --color=never '^d'" # List only directories

# Processes ========================================================================================
# utilities to manage running processes
alias psack='ps aux | grep'                  # process search helper

# Development Utilities ============================================================================

# run a server in the current directory
alias server='ruby -run -e httpd . -p 9090'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Networking =======================================================================================

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# External IP Address
alias ip="dig @resolver4.opendns.com myip.opendns.com +short"

# Local IP Address
alias localip="ipconfig getifaddr en0"

# IP Addresses
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# ==================================================================================================

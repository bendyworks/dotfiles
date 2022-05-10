# NETWORKING =======================================================================================

alias dns-flush="sudo killall -HUP mDNSResponder"

# FINDER ===========================================================================================

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# APPLICATIONS =====================================================================================

alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox'

# open Firefox Profile Manager
alias ffpm='/Applications/Firefox.app/Contents/MacOS/firefox --profilemanager'

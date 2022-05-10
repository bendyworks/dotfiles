[[ -f "$HOME/.dotfiles/.functions.zsh" ]] && source "$HOME/.dotfiles/.functions.zsh"

# source_if_exists "$HOME/.dotfiles/path"          # configure the PATH
# source_if_exists "$HOME/.dotfiles/variables"     # export environment variables
# source_if_exists "$HOME/.dotfiles/functions"     # helper functions

# [[ `uname -s` == "Darwin" ]] && source_if_exists "$HOME/.dotfiles/osx"

# if grep --quiet --no-messages Microsoft /proc/version; then
#   source_if_exists "$HOME/.dotfiles/windows"
# fi

include "$HOME/.dotfiles/.aliases.zsh" # configure command aliases

# source_if_exists "$HOME/.dotfiles/auto-complete" # configure auto-completion utilities
# source_if_exists "$HOME/.pair"                 # "pair() shell function to set Git pairs"
# source_if_exists "$HOME/.bashrc.local"         # local .bashrc overrides
# source_if_exists "$HOME/.prompt"               # Bash prompt

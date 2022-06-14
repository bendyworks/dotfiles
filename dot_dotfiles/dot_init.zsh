# This initializes the dotfiles

# first load the functions
[[ -f "$DOTFILES/.functions.zsh" ]] && source "$DOTFILES/.functions.zsh"

include $DOTFILES/.path.zsh                # consfigure the PATH
include $DOTFILES/.variables.zsh           # export environment variables
include $DOTFILES/.aliases.zsh             # configure aliases
include $DOTFILES/npm/auto_completions.zsh # NPM AutoCompletion

# When MacOS is detected
if [[ `uname -s` == "Darwin" ]]; then
  include "$HOME/.dotfiles/system_macos/aliases.zsh"
fi

# When Windows Subsystem for Linux is detected
if grep --quiet --no-messages Microsoft /proc/version; then
  include "$DOTFILES/windows"
fi

include $(brew --prefix asdf)/libexec/asdf.sh

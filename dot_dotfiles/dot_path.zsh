append_to_path() {
  # when directory exists and path doesn't contain segment
  if [[ (-d $1) && (":$PATH:" != *":$1:"*) ]]; then
    export PATH="$PATH:$1"
  fi
}

prepend_to_path() {
  if [[ (-d $1) && (":$PATH:" != *":$1:"*) ]]; then
    export PATH="$1:$PATH"
  fi
}

resolve_and_append_to_path() {
  if [[ (-d $1) && (":$PATH:" != *":$1:"*) ]]; then
    dir=$(cd $1; pwd)
    export PATH="$PATH:$dir"
  fi
}

resolve_and_prepend_to_path() {
  if [[ (-d $1) && (":$PATH:" != *":$1:"*) ]]; then
    dir=$(cd $1; pwd)
    export PATH="$dir:$PATH"
  fi;
}

# Dotfile binaries
prepend_to_path "$DOTFILES/bin"

# Load Node global installed binaries
prepend_to_path "$HOME/.node/bin"

# Use project specific binaries before global ones
prepend_to_path "node_modules/.bin:vendor/bin"

# Android SDK
if [ -d "$HOME/Library/Android/sdk" ]; then
  export ANDROID_HOME="$HOME/Library/Android/sdk"
  prepend_to_path "$ANDROID_HOME/platform-tools"
  prepend_to_path "$ANDROID_HOME/tools"
fi

# android platform tools
if [ -d "$HOME/platform-tools" ] ; then
 export PATH="$HOME/platform-tools:$PATH"
fi

# Node Version Manager
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# Ruby Version Manager
if [ -d "$HOME/.rvm" ]; then
  prepend_to_path "$HOME/.rvm/bin"
  include "$HOME/.rvm/scripts/rvm"
fi

# RBENV
if hash rbenv 2>/dev/null; then
  eval "$(rbenv init -)"
fi

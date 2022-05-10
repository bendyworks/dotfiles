# source a file if it exists
include () {
  [[ -f $1 ]] && source $1
}

# Nuke NPM Node Modules and reinstall
npm_nuke() { rm -rf node_modules && npm install; }

# Perform brew maintenance
brew_yolo() {
  brew update && \
  brew outdated && \
  brew upgrade && \
  brew postgresql-upgrade-database || brew cleanup
}

# Determine size of a file or total size of a directory
file_size() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@";
  else
    du $arg .[^.]* ./*;
  fi;
}

# Create a data URL from a file
dataurl() {
  local mimeType=$(file -b --mime-type "$1");
  if [[ $mimeType == text/* ]]; then
    mimeType="${mimeType};charset=utf-8";
  fi
  echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')";
}

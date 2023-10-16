# This file defines useful Environment Variables

# Default PostgreSQL data directory when installed via homebrew
# export PG_DATA_DIR='/usr/local/var/postgres'
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@15/include"

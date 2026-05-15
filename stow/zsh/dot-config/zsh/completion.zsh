# Case-insensitive completion
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
# Colors for completions
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
# Initialize and start completion
autoload -Uz compinit && compinit

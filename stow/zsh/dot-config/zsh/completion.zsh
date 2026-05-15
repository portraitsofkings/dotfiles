# Case-insensitive completion
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
# Colors for completions
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"

# ~~~ fzf-tab completion settings ~~~

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# fzf-tab completion settings
# disable sort when completing `git switch`
zstyle ':completion:*:git-switch:*' sort false
# set descriptions format to enable group support
# NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# preview directory's content
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# custom fzf flags
# NOTE: fzf-tab does not follow FZF_DEFAULT_OPTS by default
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
# To make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
zstyle ':fzf-tab:*' use-fzf-default-opts yes
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'

# Initialize and start completion
autoload -Uz compinit && compinit

# Some magic to improve performance
zinit cdreplay -q

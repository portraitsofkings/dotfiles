export XDG_CONFIG_HOME="$HOME/.config"

# Use neovim as man pager
export MANPAGER="nvim +Man!"

# nvm setup
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Where to write history file
HISTFILE=~/.zsh_history
# How many commands to keep in memory
HISTSIZE=10000
# How many commands to write to the history file
SAVEHIST=$HISTSIZE

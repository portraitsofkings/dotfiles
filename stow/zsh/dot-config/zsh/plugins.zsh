# Pre-made completion definitions
zinit light zsh-users/zsh-completions

# Syntax highlighting
zinit light zsh-users/zsh-syntax-highlighting

# Suggest commands when typing
zinit light zsh-users/zsh-autosuggestions
# Show only completion suggestions
ZSH_AUTOSUGGEST_STRATEGY=(completion)

# fzf completion menu
zinit light Aloxaf/fzf-tab

# ~~~ nvm ~~~
# Where to install nvm
export NVM_DIR="$HOME/.config/nvm"
# Lazy load
export NVM_LAZY_LOAD=true
# Enable nvm completions
export NVM_COMPLETION=true
# Don't run install or use on cd into directory with .nvmrc
export NVM_AUTO_USE=false
# Don't run `nvm use default` automatically
export NVM_NO_USE=true
zinit light lukechilds/zsh-nvm

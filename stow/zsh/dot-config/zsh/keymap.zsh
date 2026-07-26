# Use emacs keymap layout
bindkey -e

# Alt+Backspace stops deleting at non-alphanun
# https://unix.stackexchange.com/a/319854
backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
    zle -f kill
}
zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir

# Expand ! commands
bindkey ' ' magic-space

# https://unix.stackexchange.com/a/531178
function clear-scrollback-buffer {
  clear && printf "\e[3J"
  zle && zle .reset-prompt && zle -R
}
# Register a new ZLE widget
zle -N clear-scrollback-buffer
# Clear the screen, and the scrollback buffer (similar to bash C-M-L)
bindkey "^L" clear-scrollback-buffer
# Search partially typed command history too, instead of always global history
bindkey "^P" history-search-backward
bindkey "^N" history-search-forward

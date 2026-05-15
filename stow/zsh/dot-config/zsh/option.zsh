# Where to write history file
HISTFILE=~/.zsh_history
# How many commands to keep in memory
HISTSIZE=10000
# How many commands to write to the history file
SAVEHIST=$HISTSIZE
# Append history, instead of overwriting the whole file
setopt APPEND_HISTORY
# Share history across zsh sessions
setopt SHARE_HISTORY
# Remove command from history, if it has a leading space
setopt HIST_IGNORE_SPACE
# Do  not  enter  command lines into the history list if they are duplicates of the previous event
setopt HIST_IGNORE_DUPS
# If a new command line being added to the history list duplicates an older one, the older command is removed from the list
setopt HIST_IGNORE_ALL_DUPS
# When writing out the history file, older commands that duplicate newer ones  are omitted
setopt HIST_SAVE_NO_DUPS
# When searching for history entries, do not display duplicates of a line previously found, even if the duplicates are not contiguous
setopt HIST_FIND_NO_DUPS

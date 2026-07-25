# Where to keep the history file
HISTFILE=~/.zsh_history
# Maximum history entries to keep in-memory
HISTSIZE=10000
# Maximum history entries to keep in HISTFILE
SAVEHIST=$HISTSIZE

# Write all commands to the file immediately, sharing it with all sessions as a side effect
setopt SHARE_HISTORY
# Don't make a history entry for commands with a leading space
setopt HIST_IGNORE_SPACE
# If a new command line being added to the history list duplicates an older one, the older command is removed from the list
setopt HIST_IGNORE_ALL_DUPS
# When searching history, don't show duplicates
setopt HIST_FIND_NO_DUPS

# Explanation of why the following options are commented-out
#
# The following options only sensible when there are 2 lists of history-keeping:
# 1. In-memory
# 2. History file
#
# - In-memory history is determined by HISTSIZE variable
# - History file is saved in location specified by HISTFILE, and its size is determined by SAVEHIST variable
#
# Due to SHARE_HISTORY option being set,
# all history events are saved to the file immediately,
# so file-writing options are not needed
#
# I'm still keeping these, in case I ever feel like writing to file on every command is slow
#
# Don't add consecutive duplicate commands to in-memory history
# setopt HIST_IGNORE_DUPS
#
# Session's in-memory history is appended to the HISTFILE, instead of overwriting it
# setopt APPEND_HISTORY
#
# Remove duplicates when saving in-memory history list to the file
# setopt HIST_SAVE_NO_DUPS

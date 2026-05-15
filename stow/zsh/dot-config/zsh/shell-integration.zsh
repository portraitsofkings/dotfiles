# Make sure the command exists before sourcing
if command -v fzf &>/dev/null; then
# Set up fzf key bindings and fuzzy completion
  source <(fzf --zsh)
else
  echo "fzf not installed. fzf shell integration won't be available."
fi

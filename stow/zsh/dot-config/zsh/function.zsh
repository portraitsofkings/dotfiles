dotfiles-sync() {
  local DOTFILES="$HOME/.dotfiles"
  echo "Pulling latest changes..."
  git -C $DOTFILES pull --ff-only && bash $DOTFILES/sync.sh
}

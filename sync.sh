#!/usr/bin/env bash

# Quit immediately on any error
set -e

# ~~~~~~~~~~ Variable setup ~~~~~~~~~~

RESET='\e[0m'
RED='\e[0;31m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'

DOTFILES="$HOME/.dotfiles"
STOWDIR="${DOTFILES}/stow"

# ~~~~~~~~~~ Sync stow packages ~~~~~~~~~~

echo -e "${MAGENTA}Syncing stow packages...${RESET}"
pushd $STOWDIR &>/dev/null
for package in */; do
  echo -e "${BLUE}Syncing $(basename $package) stow package...${RESET}"
    stow --dotfiles -t $HOME -R $package
done
popd &>/dev/null

echo -e "${MAGENTA}Done!${RESET}"

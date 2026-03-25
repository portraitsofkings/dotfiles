#!/usr/bin/env bash

# Quit immediately on any error
set -e

BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
RESET='\e[0m'

# Update sudo cache immediately
# sudo -v

DOTFILES="$HOME/.dotfiles"
UNINSTALLDIR="$DOTFILES/scripts/uninstall"
STOWDIR="${DOTFILES}/stow"

# Do I even need this?
# while [[ "$answer" != "y" && "$answer" != "n" ]]; do
#     read -p "Uninstall programs (y/n)? " answer
# done
#
# if [ "$answer" = "y" ]; then
#     echo -e "${MAGENTA}Running uninstall scripts...${RESET}"
#     for script in $UNINSTALLDIR/*; do
#         bash "$script"
#     done
# fi

echo -e "${MAGENTA}Uninstalling stow packages...${RESET}"
pushd $STOWDIR &>/dev/null
for package in */; do
  echo -e "${BLUE}Uninstalling $(basename $package) stow package...${RESET}"
    stow --dotfiles -t $HOME -D $package
done
popd &>/dev/null

echo -e "${MAGENTA}Done!${RESET}"

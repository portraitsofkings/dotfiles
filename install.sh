#!/usr/bin/env bash

# Quit immediately on any error
set -e

BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
RESET='\e[0m'

# Update sudo cache immediately
# sudo -v


DOTFILES="$HOME/.dotfiles"
INSTALLDIR="$DOTFILES/scripts/install"
STOWDIR="${DOTFILES}/stow"

echo -e "${MAGENTA}Running install scripts...${RESET}"
for script in $INSTALLDIR/*; do
    bash "$script"
done

echo -e "${MAGENTA}Installing stow packages...${RESET}"
pushd $STOWDIR &>/dev/null
for package in */; do
  echo -e "${BLUE}Installing $(basename $package) stow package...${RESET}"
    stow --dotfiles -t $HOME -R $package
done
popd &>/dev/null

echo -e "${MAGENTA}Changing shell to zsh...${RESET}"
ZSHDIR="$(which zsh)"
if [ -n "$ZSHDIR" ]; then
  chsh -s $ZSHDIR
fi

echo -e "${MAGENTA}Done!${RESET}"

# Jump right into zsh
exec zsh

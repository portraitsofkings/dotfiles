#!/usr/bin/env bash

# Quit immediately on any error
set -e

# ~~~~~~~~~~ Variable setup ~~~~~~~~~~

RESET='\e[0m'
RED='\e[0;31m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'

DOTFILES="$HOME/.dotfiles"
INSTALLDIR="$DOTFILES/scripts/install"
STOWDIR="${DOTFILES}/stow"

# ~~~~~~~~~~ Installing programs ~~~~~~~~~~

# dnf
if command -v dnf &>/dev/null; then
    export INSTALLER="dnf"
fi

# pkg (Android Termux)
if uname -o | grep -i "android" > /dev/null && command -v pkg > /dev/null; then
    export INSTALLER="pkg"
fi

# Don't prompt for password in termux 
if [ "$INSTALLER" != "pkg" ]; then
    # Update sudo cache immediately
    sudo -v
fi

echo -e "${MAGENTA}Running install scripts...${RESET}"

if [ "$INSTALLER" ]; then
    for script in $INSTALLDIR/*; do
        bash "$script"
    done
else
    echo "No supported installer found, skipping..."
fi

unset INSTALLER

# ~~~~~~~~~~ Installing stow packages ~~~~~~~~~~

echo -e "${MAGENTA}Installing stow packages...${RESET}"
pushd $STOWDIR &>/dev/null
for package in */; do
  echo -e "${BLUE}Installing $(basename $package) stow package...${RESET}"
    stow --dotfiles -t $HOME -R $package
done
popd &>/dev/null

# ~~~~~~~~~~ Finishing touches ~~~~~~~~~~

echo -e "${MAGENTA}Changing shell to zsh...${RESET}"
ZSHDIR="$(which zsh)"
if [ -n "$ZSHDIR" ]; then
  chsh -s $ZSHDIR
fi

echo -e "${MAGENTA}Done!${RESET}"

# Jump right into zsh
exec zsh

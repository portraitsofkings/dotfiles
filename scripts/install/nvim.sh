#!/usr/bin/env bash

# Quit immediately on any error
set -e

NAME="nvim"
PACKAGE_NAME="neovim"
  
RESET='\e[0m'
RED='\e[0;31m'
BLUE='\e[0;34m'

if command -v $NAME > /dev/null; then
    echo -e "${BLUE}$NAME already installed${RESET}"
    exit 0
fi

echo -e "${BLUE}Installing $NAME...${RESET}"

case "$INSTALLER" in
    "dnf")
        sudo dnf install $PACKAGE_NAME -y
        exit 0
    ;;
    "pkg")
        pkg install $PACKAGE_NAME -y
        exit 0
    ;;
esac

echo -e "${RED}[ERROR] No supported installer found${RESET}"
exit 1

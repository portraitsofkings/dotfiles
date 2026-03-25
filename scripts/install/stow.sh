#!/usr/bin/env bash

# Quit immediately on any error
set -e

NAME="stow"
  
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
        sudo dnf install $NAME -y
        exit 0
    ;;
    "pkg")
        pkg install $NAME -y
        exit 0
    ;;
esac

echo -e "${RED}[ERROR] No supported installer found${RESET}"
exit 1


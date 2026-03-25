#!/usr/bin/env bash

# Quit on errors
set -e

NAME="nvim"
PACKAGE_NAME="neovim"
  
BLUE='\e[0;34m'
RESET='\e[0m'  # No color

if command -v $NAME > /dev/null; then
    echo -e "${BLUE}$NAME already installed${RESET}"
    exit 0
fi

echo -e "${BLUE}Installing $NAME...${RESET}"

if uname -o | grep -i "android" > /dev/null && command -v pkg > /dev/null; then
    pkg install $PACKAGE_NAME -y
    exit 0
fi

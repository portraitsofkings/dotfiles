#!/usr/bin/env bash

# Quit on errors
set -e

NAME="zsh"
  
BLUE='\e[0;34m'
RESET='\e[0m'  # No color

if ! command -v $NAME > /dev/null; then
    echo -e "${BLUE}$NAME is not installed${RESET}"
    exit 0
fi

echo -e "${BLUE}UnInstalling $NAME...${RESET}"

if uname -o | grep -i "android" > /dev/null && command -v pkg > /dev/null; then
    pkg uninstall $NAME -y
    exit 0
fi

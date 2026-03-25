#!/usr/bin/env bash

# Quit on errors
set -e

NAME="stow"

if [ ! -v NAME ]; then
  echo "[Installer] ERROR: Package name not specified" >&2
  exit 1
fi
  
BLUE='\e[0;34m'
RESET='\e[0m'  # No color

if command -v $NAME > /dev/null; then
    echo -e "${BLUE}$NAME already installed${RESET}"
    exit 0
fi

echo -e "${BLUE}Installing $NAME...${RESET}"

if uname -o | grep -i "android" > /dev/null && command -v pkg > /dev/null; then
    pkg install $NAME -y
    exit 0
fi

# Prompt. Only start if installed, and config exists
if [[ -n "$(which oh-my-posh)" && -f "${XDG_CONFIG_HOME}/oh-my-posh/config.json" ]]; then
  eval "$(oh-my-posh init zsh --config ${XDG_CONFIG_HOME}/oh-my-posh/config.json)"
fi

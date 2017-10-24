export NVM_DIR="/Users/mkohler/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export EDITOR='vi'
export PATH=$HOME/.cargo/bin:/usr/local/bin:$PATH

alias proxy='~/configfiles/proxy.sh'
alias proxydown='~/configfiles/proxydown.sh'

ZSH_CONFIG_DIR=~/.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'
export HOMEBREW_NO_ANALYTICS=1


if [ -n "$(/bin/ls ${ZSH_CONFIG_DIR})" ]; then
  for dotfile in ${ZSH_CONFIG_DIR}/*
  do
    if [ -r "${dotfile}" ]; then
      source "${dotfile}"
    fi
  done
fi

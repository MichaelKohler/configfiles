export NVM_DIR="/Users/mkohler/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export EDITOR='vi'
export PATH=$HOME/.cargo/bin:/usr/local/bin:$PATH
export PATH="$PATH:/Users/mkohler/development/arcanist/bin/"

ZSH_CONFIG_DIR=~/configfiles/.zsh
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

# added by travis gem
[ -f /Users/mkohler/.travis/travis.sh ] && source /Users/mkohler/.travis/travis.sh

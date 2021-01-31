# PURE
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure


# ZSH OPTIONS

export HISTFILE=~/.zsh_history
export HISTSIZE=90000000000
export SAVEHIST=$HISTSIZE
setopt inc_append_history
setopt share_history
setopt hist_find_no_dups
setopt hist_ignore_space
setopt hist_save_no_dups

setopt autocd autopushd

autoload -U compinit
compinit


# PLUGINS
fpath+=$HOME/.zsh/zsh-completions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# ALIAS

alias enc="pushd ~/Desktop && tar -cvf enc.tar.gz enc && gpg -c enc.tar.gz && rm -rf enc enc.tar.gz && popd && mv -f ~/Desktop/enc.tar.gz.gpg ."
alias dec="gpg -d enc.tar.gz.gpg > ~/Desktop/enc.tar.gz && tar -xvf ~/Desktop/enc.tar.gz -C ~/Desktop/ && rm -f ~/Desktop/enc.tar.gz"

alias k="kubectl"
alias kdo="kubectl config use-context do"
alias kmini="kubectl config use-context minikube"

alias weather="curl -4 http://wttr.in/Berlin\?m"
alias metar="curl -4 'https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=metars&requestType=retrieve&format=xml&stationString=EDDT&hoursBeforeNow=1'"


# EXPORTS

export PATH="$PATH:$HOME/.cargo/bin /usr/local/bin:$HOME/.local/bin:/snap/bin"
export GPG_TTY=$(tty)
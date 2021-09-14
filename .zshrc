# PURE

zstyle :prompt:pure:execution_time      color "#A7BBEC"
zstyle :prompt:pure:git:arrow           color "#EE7867"
zstyle :prompt:pure:git:branch          color "#EFE9F4"
zstyle :prompt:pure:git:branch:cached   color "#EE7867"
zstyle :prompt:pure:git:dirty           color "#EE7867"
zstyle :prompt:pure:host                color "#BEE7E8"
zstyle :prompt:pure:path                color "#A7BBEC"
zstyle :prompt:pure:prompt:error        color "#EE7867"
zstyle :prompt:pure:prompt:success      color "#DDF8E8"
zstyle :prompt:pure:user                color "#AE8799"
zstyle :prompt:pure:user:root           color "#DB2763"
zstyle :prompt:pure:virtualenv          color "#BEE7E8"

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
prompt_newline='%666v'
PROMPT=" $PROMPT"


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


# PLUGINS
fpath+=$HOME/.zsh/zsh-completions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

kubectl () {
    command kubectl $*
    if [[ -z $KUBECTL_COMPLETE ]]
    then
        source <(command kubectl completion zsh)
        KUBECTL_COMPLETE=1
    fi
}

autoload -U compinit
compinit

# ALIAS

alias enc="pushd ~/Desktop && tar -cvf enc.tar.gz enc && gpg -c enc.tar.gz && rm -rf enc enc.tar.gz && popd && mv -f ~/Desktop/enc.tar.gz.gpg ."
alias dec="gpg -d enc.tar.gz.gpg > ~/Desktop/enc.tar.gz && tar -xvf ~/Desktop/enc.tar.gz -C ~/Desktop/ && rm -f ~/Desktop/enc.tar.gz"

alias k="kubectl"
alias kdo="kubectl config use-context do"
alias kmini="kubectl config use-context minikube"

alias weather="curl -4 http://wttr.in/Berlin\?m"
alias metar="curl -4 'https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=metars&requestType=retrieve&format=xml&stationString=EDDT&hoursBeforeNow=1'"


# EXPORTS

export PATH="$PATH:$HOME/.cargo/bin:/usr/local/bin:$HOME/.local/bin:/snap/bin"
export GPG_TTY=$(tty)

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

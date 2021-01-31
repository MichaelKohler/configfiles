# PURE

## Halloween Theme..
# typeset -A pure_halloween_scheme=(
# 	color1 "#D94E49" # English Vermillion
# 	color2 "#f2f1e8" # Onyx
# 	color3 "#EE7867" # Coral Reef
# 	color4 "#F2C359" # Maize (Crayola)
# 	color5 "#E2B44E" # Sunray
# 	color6 "#494F55" # Quartz
# )

# zstyle :prompt:pure:execution_time      color $pure_halloween_scheme[color3]
# zstyle :prompt:pure:git:arrow           color $pure_halloween_scheme[color5]
# zstyle :prompt:pure:git:branch          color $pure_halloween_scheme[color2]
# zstyle :prompt:pure:git:branch:cached   color $pure_halloween_scheme[color1]
# zstyle :prompt:pure:git:dirty           color $pure_halloween_scheme[color4]
# zstyle :prompt:pure:host                color $pure_halloween_scheme[color6]
# zstyle :prompt:pure:path                color $pure_halloween_scheme[color1]
# zstyle :prompt:pure:prompt:error        color $pure_halloween_scheme[color1]
# zstyle :prompt:pure:prompt:success      color $pure_halloween_scheme[color4]
# zstyle :prompt:pure:user                color $pure_halloween_scheme[color4]
# zstyle :prompt:pure:user:root           color $pure_halloween_scheme[color3]
# zstyle :prompt:pure:virtualenv          color $pure_halloween_scheme[color6]

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

export PATH="$PATH:$HOME/.cargo/bin /usr/local/bin:$HOME/.local/bin:/snap/bin"
export GPG_TTY=$(tty)
# ZSH OPTIONS

export HISTFILE=~/.zsh_history
export HISTSIZE=999999
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

autoload -U compinit
compinit

# ALIAS

alias enc="pushd ~/Desktop && tar -cvf enc.tar.gz enc && gpg -c enc.tar.gz && rm -rf enc enc.tar.gz && popd && mv -f ~/Desktop/enc.tar.gz.gpg ."
alias dec="gpg -d enc.tar.gz.gpg > ~/Desktop/enc.tar.gz && tar -xvf ~/Desktop/enc.tar.gz -C ~/Desktop/ && rm -f ~/Desktop/enc.tar.gz"

alias weather="curl -4 http://wttr.in/Berlin\?m"
alias metar="curl -4 'https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=metars&requestType=retrieve&format=xml&stationString=EDDB&hoursBeforeNow=1'"

alias ll="ls -al --color=auto"

# EXPORTS
export VOLTA_HOME="$HOME/.volta"

export PATH="$VOLTA_HOME/bin:$HOME/.cargo/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/bin:$HOME/.local/bin:/snap/bin:$PATH"
export PATH="/home/mkohler/.mozbuild/git-cinnabar:$PATH"

export GPG_TTY=$(tty)

# STARSHIP
eval "$(starship init zsh)"

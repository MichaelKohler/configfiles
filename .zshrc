# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="michaelkohler"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/data/development/mozilla/android-sdk-linux/platform-tools:/data/development/mozilla/android-sdk-linux/tools:~/.gem/ruby/2.0.0/bin:/usr/local/heroku/bin/

## ALIAS ##
# ================================ #

# commands #
alias ls='ls -al --color=auto'
alias grep='grep --color'
alias sew="dmesg | grep -Ei \"error|warning\""

# files and folders #
alias goDrop='cd ~/Dropbox'
alias goDev='cd /data/development'
alias goMC='cd /data/development/mozilla/mozilla-central'
alias goMoz='cd /data/development/mozilla'
alias goPrivate='cd /data/development/private'
alias goWork='cd ~/Private'

# network #
alias mountEntertainment='sudo mount -t cifs //mkohler.dyndns.org/entertainment /mnt/entertainment -o user=michael'

# mozilla #
alias prepareFirefox='export MOZCONFIG=/data/development/mozilla/mozconfig-firefox'
alias prepareFennec='export MOZCONFIG=/data/development/mozilla/mozconfig-fennec'


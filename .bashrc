#
# ~/.bashrc
#

## KEYBOARD LAYOUT ##
setxkbmap ch


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## ALIAS ##
alias ..='cd ..'
alias ls='ls -al --color=auto'
alias goDrop='cd ~/Dropbox'
alias goDev='cd /data/development'
alias goMC='cd /data/development/mozilla/mozilla-central'
alias goMoz='cd /data/development/mozilla'
alias goProj='cd /data/development/private'
alias goPrivate='cd ~/Private'
alias mountEntertainment='sudo mount -t cifs //mkohler.dyndns.org/entertainment /mnt/entertainment -o user=michael'

alias prepareFirefox='export MOZCONFIG=/data/development/mozilla/mozconfig-firefox'
alias prepareFennec='export MOZCONFIG=/data/development/mozilla/mozconfig-fennec'

PS1='[\u@\h \W]\$ '


export PATH=$PATH:/data/development/mozilla/android-sdk-linux/platform-tools:/data/development/mozilla/android-sdk-linux/tools

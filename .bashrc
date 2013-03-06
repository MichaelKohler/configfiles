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
alias goDev='cd ~/development'
alias goMC='cd ~/development/mozilla/mozilla-central'
alias goMoz='cd ~/development/mozilla'
alias goProj='cd ~/development/private'
alias goPrivate='cd ~/Private'
alias mountEntertainment='sudo mount -t cifs //mkohler.dyndns.org/entertainment /mnt/entertainment -o user=michael'

alias prepareFirefox='export MOZCONFIG=/home/michael/development/mozilla/mozconfig-firefox'
alias prepareFennec='export MOZCONFIG=/home/michael/development/mozilla/mozconfig-fennec'

PS1='[\u@\h \W]\$ '


export PATH=$PATH:/home/michael/development/mozilla/android-sdk-linux/platform-tools:/home/michael/development/mozilla/android-sdk-linux/tools

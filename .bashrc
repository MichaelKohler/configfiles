#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source .inputrc

## ALIAS ##
alias ..='cd ..'
alias ls='ls -al --color=auto'
alias grep='grep --color'
alias goDrop='cd ~/Dropbox'
alias goDev='cd /data/development'
alias goMC='cd /data/development/mozilla/mozilla-central'
alias goMoz='cd /data/development/mozilla'
alias goPrivate='cd /data/development/private'
alias goWork='cd ~/Private'
alias mountEntertainment='sudo mount -t cifs //mkohler.dyndns.org/entertainment /mnt/entertainment -o user=michael'

alias prepareFirefox='export MOZCONFIG=/data/development/mozilla/mozconfig-firefox'
alias prepareFennec='export MOZCONFIG=/data/development/mozilla/mozconfig-fennec'

#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$\e[m '


export PATH=$PATH:/data/development/mozilla/android-sdk-linux/platform-tools:/data/development/mozilla/android-sdk-linux/tools

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ..='cd ..'
alias ls='ls -al --color=auto'
alias goDrop='cd ~/Dropbox'
alias goDev='cd ~/development'
alias goMC='cd ~/development/mozilla/mozilla-central'
alias goMoz='cd ~/development/mozilla'
alias goProj='cd ~/development/private'
alias goPrivate='cd ~/Private'

alias prepareFirefox='export MOZCONFIG=/home/michael/development/mozilla/mozconfig-firefox'
alias prepareFennec='export MOZCONFIG=/home/michael/development/mozilla/mozconfig-fennec'

PS1='[\u@\h \W]\$ '

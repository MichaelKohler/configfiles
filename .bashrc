##### ALIASES #####
alias goDev='cd ~/development'
alias goMozilla='cd ~/development/mozilla'
alias goMC='cd ~/development/mozilla/mozilla-central'
alias goPrivate='cd ~/development/private'
alias 3goUni='cd ~/Dropbox/Universitaet/3.\ Semester/'
alias goESE='3goUni && cd ESE/ese2012-team3'
alias goDrop='cd ~/Dropbox/'
alias goPres='goDrop && cd Sonstiges/presentations'

alias ll='ls -alc'
alias valgrind='valgrind --log-file=valgrind.log'
alias univpn='sudo vpnc-connect VPN2UniBe'
alias univpndisconnect='sudo vpnc-disconnect'
alias listTree='find . -type d |sed "s:[^-][^/]*/:--:g; s:^-: |:"'
alias prepareFirefox='export MOZCONFIG=/home/michael/development/mozilla/mozconfig-firefox'
alias prepareFennec='export MOZCONFIG=/home/michael/development/mozilla/mozconfig-fennec'

##### PATH #####
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/development/mozilla/android-sdk-linux/platform-tools:$HOME/development/mozilla/android-sdk-linux/tools

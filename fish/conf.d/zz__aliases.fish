alias flushnetwork="sudo ifconfig en0 down && sudo route flush && sudo ifconfig en0 up"

alias enc="tar -cvf enc.tar.gz enc && gpg -c enc.tar.gz && rm -rf enc enc.tar.gz"
alias dec="gpg -d enc.tar.gz.gpg > enc.tar.gz && tar -xvf enc.tar.gz && rm -f enc.tar.gz"

alias bear="cd 🐻"
alias k="kubectl"
alias weather="curl -4 http://wttr.in/Berlin\?m"

alias flushnetwork="sudo ifconfig en0 down && sudo route flush && sudo ifconfig en0 up"

alias enc="pushd ~/Desktop && tar -cvf enc.tar.gz enc && gpg -c enc.tar.gz && rm -rf enc enc.tar.gz && popd && mv -f ~/Desktop/enc.tar.gz.gpg ."
alias dec="gpg -d enc.tar.gz.gpg > ~/Desktop/enc.tar.gz && tar -xvf ~/Desktop/enc.tar.gz -C ~/Desktop/ && rm -f ~/Desktop/enc.tar.gz"

alias bear="cd 🐻"
alias k="kubectl"
alias weather="curl -4 http://wttr.in/Berlin\?m"

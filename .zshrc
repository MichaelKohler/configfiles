# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="michaelkohler"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/data/development/android-sdk/platform-tools:/data/development/android-sdk/tools

## ALIAS ##
# ================================ #

# commands #
alias ls='ls -al --color=auto'
alias grep='grep --color'
alias droid='java -jar /data/tools/droidAtScreen-1.0.1.jar'
alias mountWork='ecryptfs-mount-private'
alias unmountWork='ecryptfs-umount-private'
alias getSyslog='tail -f /var/log/syslog'
alias getDmesg='tail -f /var/log/dmesg'
alias buildKernel='fakeroot make-kpkg --initrd --append-to-version=-custom kernel_image kernel_headers'

# files and folders #
alias goFiles='cd ~/ownCloud'
alias goDev='cd /data/development'
alias goMC='cd /data/development/mozilla/mozilla-central'
alias goMoz='cd /data/development/mozilla'
alias goGaia='cd /data/development/mozilla/gaia'
alias goB2G='cd /data/development/mozilla/B2G'
alias goPrivate='cd /data/development/private'
alias goWork='cd ~/Private'

# network #
alias mountEntertainment='sudo mount -t cifs //mkohler.dyndns.org/entertainment /data/entertainment -o user=michael'

# mozilla #
alias prepareFirefox='export MOZCONFIG=/data/development/mozilla/mozconfig-firefox'
alias prepareFennec='export MOZCONFIG=/data/development/mozilla/mozconfig-fennec'
alias b2g='nightly -profile /data/development/mozilla/gaia/profile-debug http://system.gaiamobile.org:8080 --no-remote'

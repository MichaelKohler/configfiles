#!/bin/bash

brew install fish
echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

rm -rf ~/.config/fish/conf.d
ln -s ~/configfiles/fish/conf.d ~/.config/fish/conf.d

curl -L https://get.oh-my.fish | fish
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

pip install --user powerline-status
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

brew install terminal-notifier
fisher add franciscolourenco/done
omf install bobthefish
fisher add brigand/fast-nvm-fish
fisher add rodrigobdz/fish-apple-touchbar

echo "function fish_greeting; end" > ~/.config/fish/functions/fish_greeting.fish

fish
set -U fish_user_paths

echo "Don't forget to install the Hack font!"
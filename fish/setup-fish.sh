#!/bin/fish

curl -sL git.io/fisher -o fisher
chmod +x fisher
fish -c "./fisher install jorgebucaran/fisher"
rm fisher

omf install bobthefish
fisher add brigand/fast-nvm-fish
fisher add oh-my-fish/plugin-bang-bang
fisher add jethrokuan/fzf
fisher add edc/bass
fisher add jethrokuan/z

echo "function fish_greeting; end" > ~/.config/fish/functions/fish_greeting.fish

set -U fish_user_paths

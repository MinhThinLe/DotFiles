#!/bin/sh

configs=("kew"  "nvim"  "waybar"  "zathura"  "kitty"  "sway"  "yazi")

for app in ${configs[@]}; do
    ln -sf $(pwd)/$app $HOME/.config/
done

ln -sf $(pwd)/starship.toml $HOME/.config/
ln -sf $(pwd)/.zshrc $HOME/

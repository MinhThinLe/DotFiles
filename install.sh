#!/bin/sh

# Links and shits
apps=("kew" "nvim" "waybar" "zathura" "kitty" "sway" "yazi" "rofi" "hypr" "mako" "kanshi" "niri")

for app in ${apps[@]}; do
    ln -sf $(pwd)/$app $HOME/.config/
done

ln -sf $(pwd)/starship.toml $HOME/.config/
ln -sf $(pwd)/.zshrc $HOME/
ln -sf $(pwd)/qtxct/gruvbox.conf $HOME/.config/qt6ct/colors/gruvbox.conf
ln -sf $(pwd)/fonts $HOME/.local/share/fonts

sudo ln -sf $(pwd)/environment /etc/
sudo ln -sf $(pwd)/tlp.conf /etc/

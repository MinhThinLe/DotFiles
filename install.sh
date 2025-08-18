#!/bin/sh

# Links and shits
apps=("kew" "nvim" "waybar" "zathura" "kitty" "sway" "yazi" "rofi" "hypr" "mako" "kanshi")

for app in ${apps[@]}; do
    ln -sf $(pwd)/$app $HOME/.config/
done

ln -sf $(pwd)/starship.toml $HOME/.config/
ln -sf $(pwd)/.zshrc $HOME/
ln -sf $(pwd)/qtxct/gruvbox.conf $HOME/.config/qt6ct/colors/gruvbox.conf
sudo ln -sf $(pwd)/environment /etc/

# GTK Theme
cd ..
git clone https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme
cd Gruvbox-GTK-Theme
./install.sh
gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Dark

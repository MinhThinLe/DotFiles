sudo pacman -S --needed archlinux-xdg-menu ark base base-devel bat bluetui bluez cliphist dolphin dust efibootmgr eza fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-unikey file-roller git hypridle hyprlock intel-ucode kanshi kdeconnect kitty kvantum linux linux-firmware ly mako neovim network-manager-applet networkmanager networkmanager-dmenu niri noto-fonts-emoji nwg-look pipewire-pulse plymouth pwvucontrol rofi starship steam sudo swaybg tlp tlp-pd tlp-rdw ttf-jetbrains-mono ttf-jetbrains-mono-nerd typst ungoogled-chromium-bin unrar unzip waybar wiremix wl-clipboard wlsunset xdg-desktop-portal-gnome xwayland-satellite yay yay-debug yazi zathura zathura-pdf-poppler zsh zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S execstack gruvbox-dark-gtk kvantum-theme-gruvbox-git pwvucontrol qt6ct-kde ungoogled-chromium-bin zen-browser-bin

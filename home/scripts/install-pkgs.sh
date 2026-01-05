sudo pacman -S --needed archlinux-xdg-menu ark base base-devel bat bluetui bluez brightnessctl btop cliphist dolphin dust efibootmgr eza fastfetch fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-unikey gimp git hypridle hyprlock intel-gpu-tools intel-media-driver intel-ucode kanshi kdeconnect kitty kvantum libreoffice-still libva-utils linux linux-firmware loupe ly mako man-db man-pages mpv neovide neovim network-manager-applet networkmanager networkmanager-dmenu niri noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nwg-look pipewire-pulse plymouth rclone rofi rofi-calc sshfs starship steam stow sudo swaybg tlp tlp-pd tlp-rdw ttf-jetbrains-mono ttf-jetbrains-mono-nerd typst unrar unzip wev wine wine-mono wiremix wl-clipboard wl-mirror wlsunset wtype xdg-desktop-portal-gnome xwayland-satellite yazi yt-dlp zathura zathura-pdf-poppler zram-generator zsh zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting waybar

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S execstack gruvbox-dark-gtk kvantum-theme-gruvbox-git pwvucontrol qt6ct-kde ungoogled-chromium-bin zen-browser-bin

sudo pacman -S --needed $(cat ~/scripts/pkg-list.txt)

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S --needed $(cat ~/scripts/pkg-list-aur.txt)

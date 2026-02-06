sudo pacman -S --needed $(cat ~/scripts/pkg-list.txt)

sudo pacman -S --needed rustup

rustup default stable

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S --needed $(cat ~/scripts/pkg-list-aur.txt)

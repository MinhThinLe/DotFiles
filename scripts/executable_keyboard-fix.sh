# This fixes my keyboard's fn row being reversed
echo "options hid_apple fnmode=0" | sudo tee -a /etc/modprobe.d/hid_apple.conf
# Replace with the appropriate command to rebuild the initramfs for your specific distro
sudo mkinitcpio -P

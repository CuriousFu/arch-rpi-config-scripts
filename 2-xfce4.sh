echo "Installing Xfce4..."
sudo pacman -S --noconfirm xorg-xinit xorg-server xorg-server-utils xterm
sudo pacman -S --noconfirm xfce4
sudo pacman -S --noconfirm mesa xf86-video-fbdev xf86-video-vesa
sudo pacman -S --noconfirm slim
sudo pacman -S --noconfirm ttf-dejavu
sudo systemctl enable slim.service
sudo systemctl enable graphical.target

cat xinitrc >> ~/.xinitrc
cat bash_profile >> ~/.bash_profile

echo "  done."

sudo reboot

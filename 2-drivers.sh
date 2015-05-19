echo "Installing audio drivers..."
sudo pacman -S alsa-utils alsa-firmware alsa-lib alsa-plugins
amixer cset numid=3 0
echo "  done"

echo "Installing video drivers..."
sudo pacman -S --noconfirm mesa xf86-video-fbdev xf86-video-vesa
echo "  done"

#Random generator
#echo "RNGD_OPTS=\"-o /dev/random -r /dev/hwrng\"" > /etc/conf.d/rngd
#sudo systemctl restart rngd

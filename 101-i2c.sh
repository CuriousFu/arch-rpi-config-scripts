sudo pacman -S i2c-tools lm_sensors --noconfirm

# Uncomment device_tree_param=i2c_arm=on
sudo mcedit /boot/config.txt

# Add i2c-dev
sudo mcedit /etc/modules-load.d/raspberrypi.conf

# Does not work
#sudo echo oled128x64 0x3c >/sys/class/i2c-adapter/i2c-1/new_device

# Script created using https://hreikin.wordpress.com/2014/04/27/arch-linux-raspberry-pi-install-guide-updated/

echo "Changing root password..."
passwd
echo "  done."

echo "Changing host name..."
echo "rpi2" >/etc/hostname
echo "  done."

echo "Updating system and packages..."
echo -e "\n\nServer = http://mirror.yandex.ru/archlinux-arm/\$arch/\$repo\n" >> /etc/pacman.d/mirrorlist
pacman-key --init 
pacman -Syu --noconfirm
echo "  done."

echo "Installing utilities packages..."
pacman -S --noconfirm htop screen wget git
echo "  done."

echo "Changing time zone to Samara (UTC+4)..."
mkdir timezones
cd timezones/
wget http://www.iana.org/time-zones/repository/releases/tzdata2011n.tar.gz
tar xzf tzdata2011n.tar.gz
zic europe
ln -sf --suffix=.backup /usr/share/zoneinfo/Europe/Samara /etc/localtime
cd ..
rm -r timezones/
echo "  done."

echo "Creating user with login pi..."
pacman -S --noconfirm sudo adduser
cp sudoers /etc/sudoers
adduser pi
groupadd sudo
usermod -a -G sudo,audio,lp,optical,storage,video,wheel,games,power,scanner pi
echo "  done."

reboot

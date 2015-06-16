sudo pacman -S samba --noconfirm
cd /etc/samba/
sudo cp smb.conf.default smb.conf
sudo mcedit smb.conf
sudo pdbedit -a -u pi

sudo systemctl start smbd.service
sudo systemctl start nmbd.service

sudo systemctl enable smbd.service
sudo systemctl enable nmbd.service

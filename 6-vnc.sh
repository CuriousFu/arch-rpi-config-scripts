sudo pacman -S tigervnc --noconfirm

cat vncxstartup >~/.vnc/xstartup

sudo cat vnc-service >/etc/systemd/system/vncserver@:1.service
sudo systemctl daemon-reload
sudo systemctl enable vncserver@:1.service

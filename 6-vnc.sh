sudo pacman -S tigervnc --noconfirm

eacho "#!/bin/sh
export XKL_XMODMAP_DISABLE=1
exec startxfce4" >~/.vnc/xstartup

vncserver

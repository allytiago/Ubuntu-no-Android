#!/bin/bash
clear

extralink="https://raw.githubusercontent.com/allytiago/Ubuntu-no-Android/beta-gnome/config"

echo -e  "\033[0;32mVocê escolheu o idioma Português Brasileiro\033[0m"
echo "As configurações de idioma já serão instaladas..."
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "

clear


wget --tries=20 "$extralink/pt_br/tigervnc/vnc" -P /usr/local/bin > /dev/null
wget --tries=20 "$extralink/pt_br/tigervnc/vncpasswd" -P /usr/local/bin > /dev/null
wget --tries=20 "$extralink/pt_br/tigervnc/stopvnc" -P /usr/local/bin > /dev/null
wget --tries=20 "$extralink/pt_br/tigervnc/gnome/startvnc" -P /usr/local/bin > /dev/null
wget --tries=20 "https://raw.githubusercontent.com/allytiago/Ubuntu-no-Android/beta-gnome/config/pt_br/tigervnc/gnome/startvncserver" -P /usr/local/bin > /dev/null


chmod +x /usr/local/bin/vnc
chmod +x /usr/local/bin/vncpasswd
chmod +x /usr/local/bin/startvnc
chmod +x /usr/local/bin/startvncserver
chmod +x /usr/local/bin/stopvnc


#mkdir -p ~/.vnc

#echo '#!/bin/bash
#[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
#export PULSE_SERVER=127.0.0.1
#LANG=pt_BR.UTF-8
#export LANG
#[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
#[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
#echo $$ > /tmp/xsession.pid
#export XDG_CURRENT_DESKTOP="GNOME"
#service dbus start
#gnome-shell --x11' > ~/.vnc/xstartup

#chmod +x ~/.vnc/xstartup

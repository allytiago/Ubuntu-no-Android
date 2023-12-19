#!/bin/bash

extralink="https://raw.githubusercontent.com/allytiago/Ubuntu-no-Android/beta-gnome/config"

#Get the necessary components
sudo apt-get update
sudo apt-get install gnome-shell gnome-terminal gnome-tweaks gnome-shell-extension-ubuntu-dock gnome-shell-extensions --no-install-recommends -y
#sudo apt-get install yaru-theme-gnome-shell yaru-theme-icon yaru-theme-gtk -y

mkdir -p ~/.vnc

echo '#!/bin/bash
export XDG_CURRENT_DESKTOP="GNOME"
service dbus start
gnome-shell --x11' > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup


## Seletor de idiomas
export USER=$(whoami)
HEIGHT=0
WIDTH=0
CHOICE_HEIGHT=5
TITLE="Select"
MENU="Escolha algumas das seguintes opções: \n \nChoose any of the following options: "
export PORT=1

OPTIONS=(1 "Português (brasileiro)")

CHOICE=$(dialog --clear \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
1)
wget --tries=20 $extralink/pt_br/config.sh -O locale-config.sh
wget --tries=20 $extralink/pt_br/tigervnc/gnome/locale.sh
wget --tries=20 $extralink/pt_br/tigervnc/gnome/startvncserver -P /usr/local/bin > /dev/null
bash locale.sh
bash locale-config.sh
;;
esac


echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncpasswd

#gsettings set org.gnome.shell.extensions.dash-to-dock dock-position LEFT
#gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true
#echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc ; bash

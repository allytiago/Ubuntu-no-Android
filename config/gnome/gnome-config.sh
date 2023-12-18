#!/bin/bash

extralink="https://raw.githubusercontent.com/allytiago/Ubuntu-no-Android/main/config"

#Get the necessary components
sudo apt-get update
sudo apt-get install gnome-shell gnome-terminal gnome-tweaks gnome-shell-extension-ubuntu-dock gnome-shell-extensions --no-install-recommends -y
sudo apt-get install yaru-theme-gnome-shell yaru-theme-icon yaru-theme-gtk 

mkdir -p ~/.vnc

echo '#!/bin/bash
export XDG_CURRENT_DESKTOP="GNOME"
service dbus start
gnome-shell --x11' > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncpasswd

gsettings set org.gnome.shell.extensions.dash-to-dock dock-position LEFT
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true
#echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc ; bash

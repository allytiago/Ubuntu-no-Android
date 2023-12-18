#!/bin/bash

extralink="https://raw.githubusercontent.com/allytiago/Ubuntu-no-Android/main/config"

#Get the necessary components
sudo apt-get update
sudo apt-get install gnome-shell gnome-terminal gnome-tweaks gnome-shell-extension-ubuntu-dock --no-install-recommends -y

mkdir -p ~/.vnc

echo '#!/bin/bash
export XDG_CURRENT_DESKTOP="GNOME"
service dbus start
gnome-shell --x11' > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncpasswd

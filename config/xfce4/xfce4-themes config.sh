#!/bin/bash

vncserver -name remote-desktop -geometry 1920x1080 :1
xfconf-query -c xsettings -p /Net/ThemeName -s ZorinBlue-Dark
xfconf-query -c xsettings -p /Net/IconThemeName -s Uos-fulldistro-icons
xfce4-panel-profiles load xfce4-panel.tar.bz2
sed -i 's|backgrounds/xfce/xfce-verticals.png|backgrounds/john-towner-JgOeRuGD_Y4.jpg|' $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
xfce4-panel-profiles load xfce4-panel.tar.bz2

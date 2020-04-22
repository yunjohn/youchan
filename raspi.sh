#!/bin/bash

set -e

mkdir -p ~/.config/autostart/ 
echo "[Desktop Entry]
Type="Application"
Exec=chromium-browser  --kiosk --incognito  http://mes.uchat.com.cn/board/line?deptid=92 &" >~/.config/autostart/youchan.desktop 
ln -s ~/.config/autostart/youchan.desktop ~/Desktop/youchan.desktop
sudo cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bk
sudo cp /boot/config.txt /boot/config.txt.bk
sudo sed -i 's/#xserver-command=X/xserver-command=X -s 0 -dpms/g' /etc/lightdm/lightdm.conf
sudo sed -i 's/hdmi_mode=4/hdmi_mode=16/g' /boot/lightdm/lightdm.conf

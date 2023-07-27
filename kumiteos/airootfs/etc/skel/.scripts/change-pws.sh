#!/bin/bash

echo "Disabling Autologin"
sudo sed -e '/autologin-user=live/ s/^#*/#/' -i /etc/lightdm/lightdm.conf
echo "Set Root Password"
sudo passwd
echo "Set User Password"
passwd


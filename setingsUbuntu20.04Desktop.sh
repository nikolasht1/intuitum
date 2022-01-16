#!/bin/bash
#put this comand in p.shell

wsl --set-default-version 1
wsl --install -d <Distribution Name>
wsl -l -v
wsl -l -o
wsl --set-default-version 2
wsl --set-version Ubuntu-20.04 2

#comand on the machine
sudo apy update && sudo apt -y upgrade
sudo apt-get purge xrdp
sudo apt install -y xrdp
sudo apt install -y xfce4
sudo apt install -y xfce4-goodies
sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
echo xfce4-session > ~/.xsession
#edit file-------------------------
sudo nano /etc/xrdp/startwm.sh
#coment line
test -x .........
exec /bin/.......
xfce
#vrite line the
startxfce4
#-----------------------------------
sudo /etc/init.d/xrdp start
#open to remote desktop on the host machine
#insert localhost:3390
#or open in mobaExterm



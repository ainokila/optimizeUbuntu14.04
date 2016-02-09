#!/bin/bash
#Script para optimizar el uso de recursos de ubuntu 14.04 una vez instalado

#*****************************Antes de ejecutar*******************************
#KiB Mem:   3883676 total,   905260 used,  2978416 free,    33176 buffers
#KiB Swap:  4026364 total,        0 used,  4026364 free.   447564 cached Mem

#*****************************Despues de ejecutar*******************************
#KiB Mem:   3883676 total,   844572 used,  3039104 free,    43752 buffers
#KiB Swap:  4026364 total,        0 used,  4026364 free.   414572 cached Mem


YELLOW="33[1;33m"
RED="33[0;31m"
ENDCOLOR="33[0m"

if [ $USER != root ]; then
  echo -e $RED"Error: must be root"$ENDCOLOR
  exit 0
fi

sudo apt-get remove unity-lens-music
sudo apt-get autoremove unity-scope-musicstores
sudo apt-get remove ubuntuone-client
sudo mv /usr/bin/bluetooth-applet /usr/bin/bluetooth-applet-old
sudo mv /usr/lib/indicator-printers/indicator-printers-service /usr/lib/indicator-printers/indicator-printers-service-old
sudo apt-get remove deja-dup
sudo apt-get autoremove gnome-online-accounts
sudo mv /usr/share/oneconf/oneconf-service /usr/share/oneconf/oneconf-service-old
sudo mv /usr/sbin/modem-manager /usr/sbin/modem-manager-old

echo -e "Equipo optimizado"

#!/bin/sh

clear
echo "
 ________________________
| FAN
"

sudo dnf install -qy mbpfan

#AUTOSTART WITH SYSTEM
sudo echo "#!/bin/bash -e
mbpfan
exit 0" >> /etc/rc.local

sudo chown root:root /etc/rc.local
sudo chmod 700 rc.local
sudo reboot

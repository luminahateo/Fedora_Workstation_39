#!/bin/sh

clear
echo "
 _____________
| MAJ DNF.CONF
"
sudo rm /etc/dnf/dnf.conf
sudo echo "[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=False
skip_if_unavailable=True
fastestmirror=true
deltarpm=true
max_parellel_downloads=10" >> /etc/dnf/dnf.conf

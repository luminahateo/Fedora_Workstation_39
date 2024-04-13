#!/bin/sh

clear
echo "
 ________
| FLATHUB
"

flatpak remote-delete fedora
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

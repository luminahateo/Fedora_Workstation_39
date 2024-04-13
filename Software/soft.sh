#!/bin/sh

clear
echo "
 _____________________
| MY FEDORA - SOFT DNF
"

# AUTOREMOVE
sudo dnf autoremove -y totem rhythmbox cheese gnome-{photos,characters,dictionary,user-docs,tour}


# ADD
# WORK
## LibreOffice, Dialect, Pdfarranger, foliate, wike
sudo dnf install -y libreoffice* pdfarranger dialect foliate wike

# WEB
## Thunderbird, chatterino, vlc, clapper, transmission
sudo dnf install -y thunderbird                                                # mail
sudo dnf install -y chatterino                                                 # social
sudo dnf install -y transmission                                               # DL

# GRAPHISM
## Inkscape, Blender, Digikam, Darktable, krita, kdenlive, entangle, siril
sudo dnf install -y inkscape blender krita kdenlive                            # design
sudo dnf install -y digikam darktable entangle siril                           # Photography

# PROGRAMM
## Godot3 Godot
sudo dnf install -y godot3 godot

# MUSIC
## SoundConverter, lollypop
sudo dnf install -y soundconverter lollypop                                    # Utility

# VIDEO
## VLC clapper

sudo dnf install -y vlc* clapper                                               # player

# UTILITY
## Cockpit, gnome-tweaks, Bottles, RPI-imager, wine, secrets
sudo dnf install -y cockpit                                                    # access https://serveur:9090
sudo systemctl enable --now cockpit.socket
sudo firewall-cmd --add-service=cockpit --permanent
sudo firewall-cmd --reload
sudo dnf install -y gnome-tweaks bottles rpi-imager wine secrets


# TERMINAL
sudo dnf copr enable atim/ytop -qy && sudo dnf install -qy ytop                 # yTop
sudo dnf install -qy bat cmatrix links speedtest-cli neofetch cpufetch yt-dlp ffmpeg git cava

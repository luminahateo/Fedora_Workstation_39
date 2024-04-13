#!/bin/sh

clear
echo "
 ________________________
| MY FEDORA - SOFT FLATPAK
"

# WORK

# WEB
## tutanota, discord, telegram, twitch, youtube, Transmission
flatpak install -y com.tutanota.Tutanota                                                            # Mail
flatpak install -y {com.discordapp.Discord,org.telegram.desktop}                                    # Social
flatpak install -y io.freetubeapp.FreeTube                                                          # Video
flatpak install -y com.transmissionbt.Transmission

# UTILITY
## cockpit, Flatseal, DynamicWallpaper,
flatpak install -y org.cockpit_project.CockpitClient                                               # Serveur
flatpak install -y com.github.tchx84.Flatseal                                                      # Flatpak settings

# GRAPHISM
## curtail
flatpak install -y com.github.huluti.Curtail                                                       # Utility

# PROGRAMM
## Pulsar, github, sonicpi
flatpak install -y {dev.pulsar_edit.Pulsar,io.github.shiftey.Desktop}                              # IDE
flatpak install -y net.sonic_pi.SonicPi                                                            # Music

# MUSIC
## tauonmb, spotify, BitwigStudio, neothesia,
flatpak install -y {com.github.taiko2k.tauonmb,com.spotify.Client}                                 # Player
flatpak install -y {com.bitwig.BitwigStudio,com.github.polymeilex.neothesia}                       # MAO

# MAPS
## QGIS,
flatpak install -y org.qgis.qgis                                                                   # Maps 4 my WORK

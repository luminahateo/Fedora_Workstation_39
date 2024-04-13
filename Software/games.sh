#!/bin/sh

clear
echo "
 ________________________
| MY FEDORA - GAMES
"
# SHOP
## Steam, Lutris
sudo dnf install -y lutris steam

# UTILITY
## AntiMicroX ProtonUp-Qt
sudo dnf install -y antimicrox
flatpak install -y net.davidotek.pupgui2

clear && echo "
 _________________
| [1] install emulation?
| [ ] quit
"
read -r gane

if [ "$game" = "1" ]; then
  # EMU
  ## nintendo, sony, sega, other

  flatpak install -y {ca._0ldsk00l.Nestopia,com.snes9x.Snes9x}                                                   # Nes, SNes
  flatpak install -y {io.github.sameboy.SameBoy,io.mgba.mGBA,org.desmume.DeSmuME}                                # GameBoy, GameAdvance, DS
  flatpak install -y {org.DolphinEmu.dolphin-emu,io.github.shiiion.primehackio.github.lime3ds.Lime3DS}           # GameCube & GameCube 4 FPS Keyboard Mouse
  flatpak install -y {org.duckstation.DuckStation,net.pcsx2.PCSX2,org.ppsspp.PPSSPP}                             # PSone, PS2, PsP
  flatpak install -y {com.carpeludum.KegaFusion,org.flycast.Flycast}                                             # MasterSystem MegaDrive MegaCD, Dreamcast
  flatpak install -y org.scummvm.ScummVM                                                                         # DOS
fi

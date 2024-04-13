#!/bin/sh

clear
echo "
 _________
| MY GNOME
"

# WINDOWS
gsettings set org.gnome.desktop.wm.preferences button-layout ''                 # No button Close etc ... > add Ctrl+Q for Close all WINDOWS
# gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'         # Close windows as Mac OS X Classic

# EXTENSIONS
sudo dnf autoremove -y gnome-shell-extension-{background-logo,apps-menu,launch-new-instance,window-list}
sudo dnf install -y gnome-shell-extension-pop-shell* gnome-shell-extension-blur-my-shell gnome-shell-extension-caffeine gnome-shell-extension-frippery-move-clock gnome-shell-extension-light-style

# EXTENSIONS POST INSTALL
#
# - TopHat
#

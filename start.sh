#!/bin/sh

clear
echo "
 ______________________________
| install Fedora Workstation 39
"

# SYSTEM
./"ConfigSystem/dnf.sh"                                                        # Config dnf and fast mirror
./"ConfigSystem/flathub.sh"                                                    # add repertory flathub
./"ConfigSystem/rpmFusion.sh"                                                  # add repertory rpmFusion
./"ConfigSystem/update.sh"                                                     # first update
./"ConfigSystem/codecs.sh"                                                     # add codecs
# ./"ConfigSystem/Macintosh/fan.sh"                                            # add fan control for iMac & MBP

# USER
./"ConfigSystem/mygnome.sh"                                                    # My gnome Interface

# SOFTWARE
clear && echo "
 _________________
| [1] install software?
| [2] reboot
| [ ] quit
"
read -r install
if [ "$install" = "1" ]; then                                                  # My Software
  ./"Software/soft.sh"
  ./"Software/flat.sh"
  ./"Software/python.sh"
  ./"Software/games.sh"
  ./"ConfigSystem/update.sh"
elif [ "$install" = "2" ]; then                                                # reboot
  sudo dnf autoremove -y
  sudo dnf clean packages
  Sudo reboot
fi

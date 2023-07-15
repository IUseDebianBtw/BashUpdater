#!/bin/bash

echo "                                                             "
echo " ____            _     _    _           _       _            "
echo "|  _ \          | |   | |  | |         | |     | |           "
echo "| |_) | __ _ ___| |__ | |  | |_ __   __| | __ _| |_ ___ _ __ "
echo "|  _ < / _  / __| '_ \| |  | |  _ \ / _  |/ _  |__/ _ \ '__| "
echo "| |_) | (_| \__ \ | | | |__| | |_) | (_| | (_| | ||  __/ |   "
echo "|____/ \__,_|___/_| |_|\____/| .__/ \__,_|\__,_|\__\___|_|   "
echo "                             | |                             "
echo "                             |_|                             "
echo "                        Arch Edition                         "

# Update pacman repositories and upgrade the system

echo "+---------------------------+"
echo "|                           |"
echo "| Starting system update... |"
echo "|                           |"
echo "+----------------- ---------+"
if sudo pacman -Syu; then

    echo "+-------------------------------+"
    echo "|                               |"
    echo "| Repository update successful. |"
    echo "|                               |"
    echo "+-------------------------------+"

else

    echo "+------------------------------------+"
    echo "|                                    |"
    echo "| Repository update failed. Exiting. |"
    echo "|                                    |"
    echo "+------------------------------------+"

    exit 1
fi

# Update AUR packages
echo "+--------------------------+"
echo "|                          |"
echo "| Updating AUR packages... |"
echo "|                          |"
echo "+--------------------------+"
if yay -Syu; then

    echo "+-----------------------------+"
    echo "|                             |"
    echo "| AUR packages update success |"
    echo "|                             |"
    echo "+-----------------------------+"

else

    echo "+------------------------------------+"
    echo "|                                    |"
    echo "| AUR packages update failed. Exiting|"
    echo "|                                    |"
    echo "+------------------------------------+"

    exit 1
fi

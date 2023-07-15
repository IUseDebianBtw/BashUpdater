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
echo "                      Flatpak Edition                        "

# Update Flatpak
echo "Starting system update..."

echo "+----------------------------+"
echo "|                            |"
echo "| Starting flatpak update... |"
echo "|                            |"
echo "+----------------------------+"




# Update flatpak

echo "+----------------------------------+"
echo "|                                  |"
echo "| Updating Flatpak applications... |"
echo "|                                  |"
echo "+----------------------------------+"

if flatpak update -y; then

    echo "+----------------------------+"
    echo "|                            |"
    echo "| Flatpak update successful. |"
    echo "|                            |"
    echo "+----------------------------+"

else
    
    echo "+---------------------------------+"
    echo "|                                 |"
    echo "| Flatpak update failed. Exiting. |"
    echo "|                                 |"
    echo "+---------------------------------+"

    exit 1
fi

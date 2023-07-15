#!/bin/bash

echo "                                                             "
echo " ____            _     _    _           _       _            "
echo "|  _ \          | |   | |  | |         | |     | |           "
echo "| |_) | __ _ ___| |__ | |  | |_ __   __| | __ _| |_ ___ _ __ "
echo "|  _ < / _' / __| '_ \| |  | | '_ \ / _' |/ _' | __/ _ \ '__|"
echo "| |_) | (_| \__ \ | | | |__| | |_) | (_| | (_| | ||  __/ |   "
echo "|____/ \__,_|___/_| |_|\____/| .__/ \__,_|\__,_|\__\___|_|   "
echo "                             | |                             "
echo "                             |_|                             "
echo "                        CRUX Edition                          "

# Update ports repositories and upgrade the system
echo "Starting system update..."

echo "+---------------------------+"
echo "|                           |"
echo "| Starting system update... |"
echo "|                           |"
echo "+----------------- ---------+"
if sudo ports -u; then

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

if sudo prt-get sysup; then

    echo "+----------------------------+"
    echo "|                            |"
    echo "| System upgrade successful. |"
    echo "|                            |"
    echo "+----------------------------+"

else

    echo "+---------------------------------+"
    echo "|                                 |"
    echo "| System upgrade failed. Exiting. |"
    echo "|                                 |"
    echo "+---------------------------------+"

    exit 1
fi

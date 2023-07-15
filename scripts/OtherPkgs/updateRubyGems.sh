#!/bin/bash

echo " ____            _     _    _           _       _            "
echo "|  _ \          | |   | |  | |         | |     | |           "
echo "| |_) | __ _ ___| |__ | |  | |_ __   __| | __ _| |_ ___ _ __ "
echo "|  _ < / _  / __| '_ \| |  | |  _ \ / _  |/ _  |__/ _ \ '__| "
echo "| |_) | (_| \__ \ | | | |__| | |_) | (_| | (_| | ||  __/ |   "
echo "|____/ \__,_|___/_| |_|\____/| .__/ \__,_|\__,_|\__\___|_|   "
echo "                             | |                             "
echo "                             |_|                             "
echo "                      RubyGems Edition                        "

# Update all gems in RubyGems
echo "Starting gems update..."

if gem update; then

    echo "+--------------------------+"
    echo "|                          |"
    echo "| Gems update successful.  |"
    echo "|                          |"
    echo "+--------------------------+"

else

    echo "+---------------------------------+"
    echo "|                                 |"
    echo "| Gems update failed. Exiting.    |"
    echo "|                                 |"
    echo "+---------------------------------+"

    exit 1
fi

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
echo "                        Python Edition                       "

# Update pip packages
echo "Starting pip packages update..."

echo "+----------------------------+"
echo "|                            |"
echo "| Starting pip update...     |"
echo "|                            |"
echo "+----------------------------+"

pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U

if [ $? -eq 0 ]; then
    echo "+----------------------------+"
    echo "|                            |"
    echo "| Pip update successful.     |"
    echo "|                            |"
    echo "+----------------------------+"
else
    echo "+----------------------------+"
    echo "|                            |"
    echo "| Pip update failed. Exiting.|"
    echo "|                            |"
    echo "+----------------------------+"
    exit 1
fi

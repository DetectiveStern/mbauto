#!/bin/bash

if [[ ! -d $HOME/SickRage ]]; then
	echo "Downloading SickRage..."
	sleep 3
	git clone https://github.com/SickRage/SickRage.git -q 
	echo "Done."
else
	echo "SickRage directory already exists, skipping..."
fi


#!/bin/bash

if [[ ! -d $HOME/.sickrage ]]; then
	echo "Downloading SickRage..."
	git clone https://github.com/SickRage/SickRage.git $HOME/.sickrage -q 
	echo "Done."
else
	echo "SickRage directory already exists, skipping..."
fi

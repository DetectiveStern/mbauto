#!/bin/bash

if [[ -a $HOME/Plex/usr/lib/plexmediaserver/start.sh ]]; then
	echo "Starting Plex Standalone..."
	sleep 3
	$(cd $HOME/Plex/usr/lib/plexmediaserver/ ; screen -d -m -S Plex bash start.sh)
else 
	echo "Plex Standalone not found!"
fi


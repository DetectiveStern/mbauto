#!/bin/bash
site=`wget -qO- https://plex.tv/downloads`
if [[ `getconf LONG_BIT` == "64" ]]; then
	echo "Getting 64-bit deb..."
	file=$( echo "$site" | grep 'data-event-label="Ubuntu64"' | grep -Eoi '<a [^>]+>' | grep -Eo 'href="[^\"]+"' | cut -d "\"" -f 2 )
else 
	echo "Getting 32-bit deb..."
	file=$( echo "$site" | grep 'data-event-label="Ubuntu32"' | grep -Eoi '<a [^>]+>' | grep -Eo 'href="[^\"]+"' | cut -d "\"" -f 2 )
fi
wget "$file"

#!/bin/bash
arch=`getconf LONG_BIT`
echo "Getting $arch-bit deb..."
site=`wget -qO- https://plex.tv/downloads`
deb=$( echo "$site" | grep 'data-event-label="Ubuntu'$arch'"' | grep -Eoi '<a [^>]+>' | grep -Eo 'href="[^\"]+"' | cut -d "\"" -f 2 )
filename=$( echo "$deb" | cut -d "/" -f6 )
wget "$deb" -q 
if [[ ! -a "$filename" ]]; then
	echo "Download Failed"
else
	echo "Saved $filename"
	echo "$filename" >> packageinfo.log
fi



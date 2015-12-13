#!/bin/bash

site=`wget -qO- https://plex.tv/downloads`

file=$( echo "$site" | grep 'data-event-label="Ubuntu64"' | grep -Eoi '<a [^>]+>' | grep -Eo 'href="[^\"]+"' | cut -d "\"" -f 2 )

wget "$file"

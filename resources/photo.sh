#!/bin/bash
# This script takes a photo of the thief and uploads it to the server

# timestamp=$(date +%s)
uuid=$(/usr/sbin/ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')

/Library/Caches/imagesnap $uuid-photo.png

# Upload file to server
scp $uuid-photo.png eudomus@metricspot.com:/home/eudomus/webapps/macdefense

# Delete file from local folder to remove traces
rm $uuid-photo.png

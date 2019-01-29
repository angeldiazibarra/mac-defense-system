#!/bin/bash
# This script will silently capture a screenshot and upload it to your server

# Uncomment the following 2 lines to open FaceTime and take a photo of the thief
# open facetime://
# sleep 5

# Uncomment the following 2 lines to open Google Maps and take a screenshot of the thief's location
# open -a "Google Chrome" https://www.google.com/maps/
# sleep 5

# timestamp=$(date +%s)
uuid=$(/usr/sbin/ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')

screencapture -x $uuid-screenshot.png

# Upload file to server
scp $uuid-screenshot.png eudomus@metricspot.com:/home/eudomus/webapps/macdefense

# Delete file from local folder to remove traces
rm $uuid-screenshot.png

#!/bin/bash
# This script will silently capture a screenshot and upload it to your server

# Uncomment the following 2 lines to open FaceTime and take a photo of the thief
# open facetime://
# sleep 5

# Define a timestamp variable
timestamp=$(date +%s)
# username=$(osascript -e "host name of (system info)")
uuid=$(ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')

screencapture -x $uuid-$timestamp-screenshot.png

#TO DO - upload to server

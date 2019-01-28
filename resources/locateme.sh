#!/bin/bash

# This script gets the computer's location and uploads it to the server

uuid=$(ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')
loc=$(./LocateMe -f "{\"lat\":{LAT},\"lon\":{LON},\"alt\":{ALT},\"time\":\"{TIME}\",\"uuid\":\"$uuid\"}")


echo $loc >> $uuid-location.json

# Upload file to server
scp $uuid-location.json eudomus@metricspot.com:/home/eudomus/webapps/macdefense

# Delete file from local folder to remove traces
rm $uuid-location.json

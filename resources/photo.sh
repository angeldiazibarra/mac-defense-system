#!/bin/bash
# This script takes a photo of the thief and uploads it to the server

timestamp=$(date +%s)
uuid=$(ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')

./imagesnap  $uuid-$timestamp-photo.jpg

# TO DO Upload to server
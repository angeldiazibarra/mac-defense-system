#!/bin/bash

uuid=$(/usr/sbin/ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')

# Get my public IP
ip=$(dig @resolver1.opendns.com ANY myip.opendns.com +short)

echo $ip >> $uuid-ip.txt

# Upload file to server
scp $uuid-ip.txt eudomus@metricspot.com:/home/eudomus/webapps/macdefense

# Delete file from local folder to remove traces
rm $uuid-ip.txt

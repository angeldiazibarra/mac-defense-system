#!/bin/bash
#This script will silently capture a screenshot and upload it to your server

#Uncomment the following 2 lines to open FaceTime and take a photo of the thief
# open facetime://
# sleep 5

# Define a timestamp variable
timestamp=$(date +%s)
username=$(osascript -e "host name of (system info)")

screencapture -x $username-$timestamp.png

#TO DO - upload to server

#Uncomment the following line to activate the alarm
# osascript soundalarm.scpt 

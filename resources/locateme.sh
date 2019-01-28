#!/bin/bash
uuid=$(ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')
loc=$(./LocateMe -f "{\"lat\":{LAT},\"lon\":{LON},\"alt\":{ALT},\"time\":\"{TIME}\",\"host\":\"{HOST}\",\"uuid\":\"$uuid\"}")
echo $loc

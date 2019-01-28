#!/bin/bash
# Returns this device's Universally Unique Identifier (UUID)
ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}'

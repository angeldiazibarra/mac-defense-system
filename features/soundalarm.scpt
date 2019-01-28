set Volume 1

tell application "System Events"
    repeat 32 times
        key code 145
    end repeat
end tell

do shell script "caffeinate -s afplay smoke-alarm.aiff"

#tell application "System Events" to set bounds of window "System Events" of application "System Events" to {100, 100, 500, 500}
#	click at {300, 300}

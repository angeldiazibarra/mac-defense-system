set Volume 10

tell application "System Events"
    repeat 32 times
        key code 145
    end repeat
end tell

do shell script "caffeinate -s afplay smoke-alarm.aiff"
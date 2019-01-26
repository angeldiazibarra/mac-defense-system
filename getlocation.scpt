tell application "Location Helper"
    set listCoords to get location coordinates
    return (item 1 of listCoords as text) & ", " & (item 2 of listCoords) as text
end tell

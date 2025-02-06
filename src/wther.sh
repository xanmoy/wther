#!/bin/bash

# Get username (Snap allows $USER, but not `whoami`)
USER_NAME="${USER:-User}"

# Get current hour
HOUR=$(date +%H)

# Determine greeting
if [ "$HOUR" -ge 5 ] && [ "$HOUR" -lt 12 ]; then
    GREETING="Good morning"
elif [ "$HOUR" -ge 12 ] && [ "$HOUR" -lt 18 ]; then
    GREETING="Good afternoon"
elif [ "$HOUR" -ge 18 ] && [ "$HOUR" -lt 22 ]; then
    GREETING="Good evening"
else
    GREETING="Good night"
fi

# Check if a location is provided
if [ $# -eq 1 ]; then
    LOCATION="$1"
    URL="https://wttr.in/${LOCATION}"
else
    URL="https://wttr.in"
fi

# Display greeting
echo "$GREETING, $USER_NAME! Fetching weather data for ${LOCATION:-your location}..."

# Fetch weather and remove unwanted text
curl -s "$URL" | grep -Pv "Follow\s+@igor_chubin|new API|for wttr.in updates" || { echo "Error: Unable to fetch weather data."; exit 1; }

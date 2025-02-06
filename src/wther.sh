#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 [LOCATION]"
    echo "If LOCATION is not provided, the weather for your current IP-based location will be displayed."
    exit 1
}

# Check if a location is passed as an argument
if [ $# -eq 1 ]; then
    LOCATION="$1"
    URL="https://wttr.in/${LOCATION}"
else
    # Default to IP-based location
    URL="https://wttr.in"
fi

# Fetch and display the weather
echo "Fetching weather data for ${LOCATION:-your location}..."
curl -s "$URL" || { echo "Error: Unable to fetch weather data."; exit 1; } 

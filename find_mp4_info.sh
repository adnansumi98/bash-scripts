#!/bin/bash

# Check if directory is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/directory"
    exit 1
fi

echo "File, Duration, Parent"
# Get the directory path from argument
DIR="$1"

# Find all mp4 files and process them
find "$DIR" -type f -name "*.mp4" | while read -r file; do
    # Extract the file name
    filename=$(basename "$file")

    # Extract the parent directory
    parentdir=$(dirname "$file")

    # Get the duration of the video using ffprobe
    duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$file")

    # Format the duration into hours, minutes, seconds
    formatted_duration=$(awk -v dur="$duration" 'BEGIN{printf "%02d:%02d:%02d\n", int(dur/3600), int(dur%3600/60), int(dur%60)}')

    # Print the details
    echo "$filename, $formatted_duration, $parentdir"
   
done

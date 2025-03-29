# one liner for current directory recursively
# dependiencies find, ffmpeg ,ffprobe, awk

 find . -type f -name "*.mp4" -exec sh -c 'for file; do duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$file"); formatted_duration=$(awk -v dur="$duration" "BEGIN{printf \"%02d:%02d:%02d\", int(dur/3600), int(dur%3600/60), int(dur%60)}"); echo "$(basename "$file"), $formatted_duration, $(dirname "$file")"; done' sh {} +

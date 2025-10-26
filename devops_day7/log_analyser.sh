#!/bin/bash
# Log Analyser

LOG_FILE=$1
OUTPUT_FILE="/mnt/hdd/DevOps/log_summary_$(date +%F).txt"

if [ -z "$LOG_FILE" ]; then
	echo "Usage: $0 <path_to_log_file>"
	exit 1
fi

# check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
	echo "Error: Log file '$LOG_FILE' not found!"
	exit 1
fi

#ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")
#WARNING_COUNT=$(grep -c "WARNING" "$LOG_FILE")
#INFO_COUNT=$(grep -c "INFO" "$LOG_FILE")

echo > "$OUTPUT_FILE"

read ERROR_COUNT WARNING_COUNT INFO_COUNT <<< $(awk '
{
	if (/ERROR/) e++
	if (/WARNING/) w++
	if (/INFO/) i++
}
END { print e+0, w+0, i+0}
' "$LOG_FILE")

{
	echo "Log Analysis Summary - $(date)"
	echo "File: $LOG_FILE"
	echo "Number of ERROR entries: $ERROR_COUNT"
	echo "Number of WARNING entries: $WARNING_COUNT"
	echo "Number of INFO entries: $INFO_COUNT"
} >> "$OUTPUT_FILE"


echo "Top 5 most frequent words:" >> "$OUTPUT_FILE"

awk '
{
	for (i = 1; i <= NF; i++) {
		word = tolower($i)
		gsub(/[^a-z]/, "", word)
		if (length(word) > 0) count[word]++
	}
}
END {
	for (w in count)
		printf "%d %s\n", count[w], w
}
' "$LOG_FILE" | sort -nr | head -5 >> "$OUTPUT_FILE"


#grep -oE '\b[[:alpha:]]+\b' $LOG_FILE | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -5 >> "$OUTPUT_FILE"

echo -e "\e[31mAnalysis saved to \e[32m$OUTPUT_FILE"
